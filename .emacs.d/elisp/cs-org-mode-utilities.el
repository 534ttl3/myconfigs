;;; cs-org-mode-utilities.el --- org utilities       -*- lexical-binding: t; -*-

;; Copyright (C) 2020  chris

;; Author: chris <chris@chris-lenovo>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(require 'hydra)

(defun count-occurences (regex string)
  (recursive-count regex string 0))

(defun recursive-count (regex string start)
  (if (string-match regex string start)
      (+ 1 (recursive-count regex string (match-end 0)))
    0))

(defun my-get-image-width-by-attr-str ()
  (interactive)
  )

(defun current-line-empty-p ()
  (save-excursion
    (beginning-of-line)
    (looking-at "[[:space:]]*$")))

(defun my-org-scale-image (&optional minus)
  "Scale an image."
  (interactive)
  (let* (goto-this-char-later)
    ;; (end-of-visual-line)
    (setq org-image-actual-width nil)

    (let* ((orig-point (point))
           (org-width-pos (re-search-backward "#\\+attr_org:\s+:width\s+\\([0-9]+\\)"))
           (beg (match-beginning 1))
           (end (match-end 1))
           (found-point (point))
           (substr-between-points (buffer-substring-no-properties found-point
                                                                  orig-point))
           (num-of-linebreaks (count-occurences "\n" substr-between-points))
           (num (string-to-number (buffer-substring-no-properties beg end)))
           (org-zoom-num 20)
           point-before-insertion
           )

      (goto-char orig-point)
      (if (my-is-org-point-on-plain-image)
          (if (<= num-of-linebreaks 2)
              (progn
                (delete-region beg end)
                (goto-char beg)
                (if minus
                    (insert (number-to-string (- num org-zoom-num)))
                  (insert (number-to-string (+ org-zoom-num num))))
                (org-redisplay-inline-images))
            (progn
              ;; in this case there is no org_attr width attribute
              ;; and you need to add one
              (goto-char (org-element-property :begin (org-element-context)))
              (setq point-before-insertion (point))
              (insert "\n")
              (previous-line)
              (end-of-line)
              (when (not (current-line-empty-p))
                (insert "\n"))
              (next-line)
              (beginning-of-line)
              (insert (concat "#+attr_org: :width " (number-to-string (round (* 0.5 (window-pixel-width))))))
              (org-redisplay-inline-images)
              (org-next-link)
              ;; (user-error "Please move to an image to zoom!")
              (setq goto-this-char-later (point))
               )))
      (if goto-this-char-later
          (goto-char goto-this-char-later)
        (goto-char orig-point))
      (org-redisplay-inline-images))))


(defun my-is-org-point-on-plain-image ()
  (interactive)
  (let* ((link-path (org-element-property :raw-link (org-element-context)))
         (link-extension
          (when (org-element-property :raw-link (org-element-context))
              (file-name-extension (org-element-property :raw-link (org-element-context))))))
    (when link-extension
        (if (member link-extension (list "jpeg" "jpg" "bmp" "svg" "png" "tif"
                                         "tiff" "gif"))
            t
          nil))))

(defun my-add-attr-org-width-if-not-there ()
  (interactive)
  (setq org-image-actual-width nil)
  (if (my-is-org-point-on-plain-image)
      ))





(defun my-run-org-image-scaler-hydra ()
  (interactive)
  (let* ((hydra-body (eval (remove nil
                                   `(defhydra hydra-my-org-image-scaler
                                      (:columns 1)
                                      "scale org inline image"
                                      ("+"
                                       (lambda ()
                                         (interactive)
                                         (my-org-scale-image))
                                       "enlarge")
                                      ("-"
                                       (lambda ()
                                         (interactive)
                                         (my-org-scale-image 'minus))
                                       "shrink")
                                      ("q" nil "cancel"))))))
    (hydra-my-org-image-scaler/body)
    (fmakunbound 'hydra-my-org-image-scaler/body)
    (setq hydra-my-org-image-scaler/body nil)))

(define-key org-mode-map (kbd "C-c s") 'my-run-org-image-scaler-hydra)
(define-key org-mode-map (kbd "C-c C-+") 'my-org-scale-image)
(define-key org-mode-map (kbd "C-c C--") (lambda ()
                                           (interactive) (my-org-scale-image 'minus)))

(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (setq filename (concat (make-temp-name (concat (buffer-file-name)
                                                 "_"
                                                 (format-time-string "%Y%m%d_%H%M%S_")))
                         ".png"))
  (call-process "import" nil nil nil filename)
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images))



(defun org-archive-done-tasks-subtree ()
  (interactive)
  (org-map-entries (lambda ()
                     (org-archive-subtree)
                     (setq org-map-continue-from (outline-previous-heading)))
                   "/DONE"
                   'tree))

(defun org-archive-done-tasks-file ()
  (interactive)
  (org-map-entries (lambda ()
                     (org-archive-subtree)
                     (setq org-map-continue-from (outline-previous-heading)))
                   "/DONE"
                   'file))

(provide 'cs-org-mode-utilities)
;;; cs-org-mode-utilities.el ends here
