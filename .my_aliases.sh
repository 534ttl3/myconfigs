# --------- aliases ----------
alias ll='ls -l'
alias la='ls -al'
alias latexmain='latexmk -pv -pvc -interaction=nonstopmode -pdf -pdflatex=lualatex -bibtex main.tex'
alias latexmkcleanalot='latexmk -CA; find . -name "*.bbl" -o -name "*.run.xml" -o -name "*.aux" | xargs rm'
alias latexmainandglossaries='latexmk -pv -pvc -interaction=nonstopmode -pdf -pdflatex="lualatex %S; makeglossaries main" -bibtex main.tex'
alias cddb='cd ~/Dropbox'
alias origpath='export PATH=/home/chris/opt/vim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin'
alias addanaconda='export PATH="/home/chris/opt/anaconda3/bin:$PATH"'
alias work='$HOME/.work.sh'
alias vapdfs='impressive -T0 --fake-fullscreen *.pdf'
alias clffiles='rm *.png *.pdf *.eps *.csv'  # clear figure files (in current directory)
alias edvlog='cd $HOME/projects/computing_activity_protocol; vim main.tex'
alias frenchwriting='cd $HOME/Dropbox/1Projects/2FrenchLearning/sommaire'
alias scrap='cd $HOME/projects/computing_activity_protocol; vim scrap.md'
alias pbc='xclip -selection clipboard'
alias clffiles='rm *.png *.pdf *.eps *.csv'
>>>>>>> dfb5f2b9896532de24ebb35b8926d524330d3935
