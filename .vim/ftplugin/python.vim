<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <link rel="Stylesheet" type="text/css" href="/css/style.css" >
  <title>jpythonfold.vim - A better python fold script : vim online</title>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="KEYWORDS" content="Vim, Vi IMproved, text editor, home, documentation, tips, scripts, news">
  <meta name="viewport" content="width=1000, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="/images/vim_shortcut.ico">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#ffffff"> 

<!-- HEADER, SPONSOR IMAGE, VIM IMAGE AND BOOK AD -->
<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
  <tr>
    <td colspan="4" class="lightbg"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  </tr>
  <tr>
  <td class="lightbg">&nbsp;&nbsp;&nbsp;</td>
  <td class="lightbg" align="left"><a href="https://vim.sourceforge.io/sponsor/index.php"><img src="/images/sponsorvim.gif" alt="sponsor Vim development" border="0"></a></td>
  <td class="lightbg" align="center">
	 <a href="/"><img src="/images/vim_header.gif" border="0" alt="Vim logo" class="align-middle"></a>
		  <span><a class="httpslink" href="https://vim.sourceforge.io/scripts/script.php?script_id=2527">go to HTTPS page</a></span>
	  </td>
  <td class="lightbg" align="right"><a href="http://iccf-holland.org/click5.html"><img src="/images/buyhelplearn.gif" alt="Vim Book Ad" border="0"></a></td>
  </tr>
  <tr>
    <td colspan="4" class="lightbg"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  </tr>
  <tr>
    <td colspan="4" class="darkbg"><img src="/images/spacer.gif" width="1" height="10" alt=""></td>
  </tr>
</table>
<!-- THE PAGE BODY: BETWEEN HEADER AND FOOTER -->

<table cellpadding="0" cellspacing="0" border="0" width="100%">
  <col width="180">
  <col width="1">

  <tr valign="top">
    <td class="sidebar">
      <table width="180" cellpadding="4" cellspacing="0" border="0">
        <tr valign="top">
          <td class="sidebar">

<!-- INCLUDE THE PAGE NAVIGATION -->
<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
    <tr>
        <td><small>not logged in (<a href="https://vim.sourceforge.io/login.php">login</a>)</small></td>
    </tr>
    <tr><td>
<small>&nbsp;</small>
<form action="https://www.google.com/cse" id="cse-search-box">
  <div>
    <input type="hidden" name="cx" value="partner-pub-3005259998294962:bvyni59kjr1" />
    <input type="hidden" name="ie" value="ISO-8859-1" />
    <input type="text" name="q" size="20" />
    <br>
    <input type="submit" name="sa" value="Search" />
  </div>
</form>
<script type="text/javascript" src="https://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en"></script>
    </td></tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="1"></td>
    </tr>
    <tr>
        <td class="darkbg"><img src="/images/spacer.gif" alt='' border="0" height="3"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="2"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/">Home</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/search.php">Advanced search</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/about.php">About Vim</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/community.php">Community</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/news/news.php">News</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/sponsor/index.php">Sponsoring</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/trivia.php">Trivia</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/docs.php">Documentation</a></td>
        </tr>
        <tr>
            <td class="sidebarheader download"><a href="https://vim.sourceforge.io/download.php">Download</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/scripts/index.php">Scripts</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/tips/index.php">Tips</a></td>
        </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/account/index.php">My Account</a></td>
        </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
    <tr>
        <td class="checker"><img src="/images/spacer.gif" alt='' border="0" height="1"></td>
    </tr>
    <tr>
        <td><img src="/images/spacer.gif" alt="" border="0" width="1" height="7"></td>
    </tr>
        <tr>
            <td class="sidebarheader"><a href="https://vim.sourceforge.io/huh.php">Site Help</a></td>
        </tr>
</table>
<br>
<g:plusone></g:plusone>

            <table width="172" cellpadding="0" cellspacing="0" border="0">
              <tr><td><img src="/images/spacer.gif" alt="" border="0" width="1" height="8"></td></tr>
              <tr><td class="darkbg"><img src="/images/spacer.gif" width="1" height="3" alt=""></td></tr>
            </table>
            <br>

<!-- INCLUDE THE PAGE SIDEBAR TEXT -->
&nbsp;

          </td>
        </tr>
      </table>
    </td>

    <td class="darkbg"><img src="/images/spacer.gif" width="1" height="1" border="0" alt=""><br></td>
    <td>
      <table width="100%" cellpadding="10" cellspacing="0" border="0" bordercolor="red">
        <tr>
          <td valign="top">

<span class="txth1">jpythonfold.vim : A better python fold script</span> 

<br>
<br>

<!-- karma table -->
<table cellpadding="4" cellspacing="0" border="1" bordercolor="#000066">
<tr>
  <td class="lightbg"><b>&nbsp;script karma&nbsp;</b></td>
  <td>
    Rating <b>318/98</b>,
    Downloaded by 4585    &nbsp;
    <g:plusone></g:plusone>
  </td>
  <td class="lightbg">
  <b>&nbsp;Comments, bugs, improvements&nbsp;</b>
  </td>
  <td>
    <a href="http://vim.wikia.com/wiki/Script:2527">Vim wiki</a>
  </td>  
</tr>
</table>
<p>

<table cellspacing="0" cellpadding="0" border="0">
<tr><td class="prompt">created by</td></tr>
<tr><td><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">script type</td></tr>
<tr><td>syntax</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">description</td></tr>
<tr><td>This script allows automatically folding of Python code.<br>It completely rewritten from Jorrit Wiersma's script (<a href="/scripts/script.php?script_id=515">vimscript #515</a>; other competitors are <a href="/scripts/script.php?script_id=781">vimscript#781</a> and <a href="/scripts/script.php?script_id=2002">vimscript#2002</a>).<br>The folding and fold text are completely rewritten: the algorithm systematically set up, so it behaves as accurate as possible (at the cost of some speed).<br>Main feature of this script is that it folds empty space, saving lots of screen space (although you can turn it off, see below).<br>Classes and defs are folded, of course.<br>Indent zero comments separating classes and defs are not folded, so you see the global divisions in your code.<br>Global code is folded in blocks (separated by comments).<br><br>There are three options. To use them, check the script:<br>- Keep empty lines out of a fold (giving more readable classes with folded functions, but using more screen space).<br>- Ignore non-python files.<br>- Allow for multiline class definitions (at the cost of folding comments starting with the word &quot;class&quot;) or stricter def checking (missing multiline defs).<br><br>Known bug:<br>- multiline strings that look like code are handled as such (basically unfixable, actually)<br><br>Example: <br>------------------------<br>#unfolded comment<br>def foo:<br>#folded comment<br>&nbsp;&nbsp;&nbsp;&nbsp;#also folded<br>&nbsp;&nbsp;&nbsp;&nbsp;bar = 5<br><br>#unfolded, but the empty line above this one is folded with the function<br>#code below will be folded<br>a = 5<br>b = 6</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td class="prompt">install details</td></tr>
<tr><td>Either save it in a file and source that file whenever you want to use the folding, or save it in your ftplugin directory (for example, ~/.vim/ftplugin/python.vim) and it should load every time you edit python code.<br>If you want it to autodetect python code and ignore other code (which is probably what you want if you installed it in the ftplugin directory), uncomment the three lines denoted as such.<br></td></tr>
<tr><td>&nbsp;</td></tr>
</table>

<p>
<table cellpadding="4" cellspacing="0" border="1" bordercolor="#000066">
<tr><td class="lightbg">
Rating scripts is only available on the 
<a href="https://vim.sourceforge.io/scripts/script.php?script_id=2527">HTTPS page</a>
</td></tr></table>
<p>
<span class="txth2">script versions</span> (<a href="add_script_version.php?script_id=2527">upload new version</a>)
<p>
Click on the package to download.
<p>

<table cellspacing="2" cellpadding="4" border="0" width="100%">
<tr class='tableheader'>
        <th valign="top">package</th>
    <th valign="top">script version</th>
    <th valign="top">date</th>
    <th valign="top">Vim version</th>
    <th valign="top">user</th>
    <th valign="top">release notes</th>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=10034">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>3.2</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-25</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Improved decorator recognition: now works with doxygen. (Thanks, Grissiom)<br>Bug removed. (Thanks, Andrew)</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9986">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>3.1</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-17</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">Now also folds decorated functions and classes properly. Thanks for the idea, Kai.</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9972">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>3.0.3</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-15</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Anothter bugfix: except/else in global code doesn't introduce extra folds anymore. Thanks, Grissiom</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9969">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>3.0.2</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-14</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">Another bugfix: debug code removed. Thanks, Andrew</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9939">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>3.0.1</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-09</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Refactored everything again. Now not only faster, but also systematically set up. <br>I actually try to explain everything in the script, in case you are interested :-) <br>Minor bug fix over 3.0; thanks, Grissiom</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9929">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>2.5</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-07</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">Found a tiny bug: a function whose first line is a comment got folded wrong. Fixed it by removing (!) some code.</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9922">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>2.4</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-06</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Now expects a colon in a class definition, but not in a function definition, allowing for multiline defs (with explanation if you happen to disagree).<br>Stamped out a bug where sometimes global code gets folded in a class.<br>Speeded up a bit.</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9910">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>2.3</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-04</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">Thanks to many helpful comment a brand new version, a bit less slow than 2.2.<br>Folding accuracy is improved thanks to my quality control system (i.e. I made a test Python file handling all cases :-)</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9908">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>2.2</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-03</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Two silly bugs removed in foldtext, making version 2.1 unbearable.<br>Improved script layout a bit.</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9907">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>2.1</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-03</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">(2.0 was too buggy)<br>Major rewrite; behaves more consistently in many borderline cases. Made more readable using an extra function. <br>Also handles docstrings with single quotes.</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9904">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>1.4</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-02</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Bugfix release: handles files with tabs, works even when foldcolumn or number is set.</td>
</tr>
<tr>
        <td class="roweven" valign="top" nowrap><a href="download_script.php?src_id=9899">jpythonfold.vim</a></td>
    <td class="roweven" valign="top" nowrap><b>1.3</b></td>
    <td class="roweven" valign="top" nowrap><i>2009-02-01</i></td>
    <td class="roweven" valign="top" nowrap>6.0</td>
    <td class="roweven" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="roweven" valign="top" width="2000">Minor improvement giving dots between text and line count.</td>
</tr>
<tr>
        <td class="rowodd" valign="top" nowrap><a href="download_script.php?src_id=9894">jpythonfold.vim</a></td>
    <td class="rowodd" valign="top" nowrap><b>1.1</b></td>
    <td class="rowodd" valign="top" nowrap><i>2009-02-01</i></td>
    <td class="rowodd" valign="top" nowrap>6.0</td>
    <td class="rowodd" valign="top"><i><a href="/account/profile.php?user_id=16451">Jurjen Bos</a></i></td>
    <td class="rowodd" valign="top" width="2000">Thanks to a few useful reactions, here is a new version.<br>- It doesn't crash anymore if the script ends in empty lines or comments<br>- There is (commented out) code for detecting and ignoring non-python scripts<br><br></td>
</tr>
</table>
<small>ip used for rating: 141.52.94.103</small>
<!-- finish off the framework -->
          </td>
        </tr>
      </table>
    </td>

  </tr>
</table>

<!-- END OF THE PAGE BODY: BETWEEN HEADER AND FOOTER -->

<table width="100%" cellpadding="0" cellspacing="0" border="0" bordercolor="red">
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td></tr>
  <tr><td colspan="4" bgcolor="#000000"><img src="/images/spacer.gif" height="2" width="1" alt=""></td></tr>
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td></tr>
  <tr>
    <td><img src="/images/spacer.gif" width="5" height="1" alt=""></td>

    <td align="left" valign="top"><small>
      If you have questions or remarks about this site, visit the
      <a href="http://vimonline.sf.net">vimonline development</a> pages.
      Please use this site responsibly.
      <br> 
      
      Questions about <a href="http://www.vim.org/about.php">Vim</a> should go
      to the <a href="http://www.vim.org/maillist.php">maillist</a>.
      Help Bram <a href="http://iccf-holland.org/">help Uganda</a>.
      </small>
	&nbsp;
	&nbsp;

    </td>

    <td align="right" valign="top">
      	<a href="//sourceforge.net/projects/vim" rel="nofollow"><img src="//sflogo.sourceforge.net/sflogo.php?group_id=8&type=1" width="88" height="31" border="0" alt="SourceForge.net Logo" /></a>
    </td>

    <td><img src="/images/spacer.gif" width="5" height="1" alt=""></td>
  </tr>

    
  <tr><td colspan="4"><img src="/images/spacer.gif" width="1" height="5" alt=""></td>
  
  </tr>
</table>

<!-- for Google +1 button -->
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>

</body>
</html>

