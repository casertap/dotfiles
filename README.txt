############### VIM #####################

<C-p> CtrlP
-> <C-t> Open in a new Tab (\t to view all tabs)
	:tabp tabprevious
	:tabn tabnext

-> <C-v> or <C-s> Open in split buffer vertical
   <C-x> Open in split horizontal

-> <C-n> Next search
   <C-p> Previous search

-> <C-z> to mark/unmark multiple files and
         <C-o> to open them

-> <C-r> to switch to regexp mode

End the input string with a colon : followed by a command to execute it on the opening file(s):
	:diffthis when opening multiple files

----
\rlog for diff with previous versions

]c               - advance to the next block with differences
[c               - reverse search for the previous block with differences
do (diff obtain) - bring changes from the other file to the current file
dp (diff put)    - send changes from the current file to the other file
zo               - unfold/unhide text
zc               - refold/rehide text
zr               - unfold both files completely
zm               - fold both files completely

------

\f Ask.vim
-> h to open in horizontal split
-> v to open in vertical split
-> t to open in new tab

----
\/ toggle comment

-----
/n NERDTree toggle

-----

\b see all buffers in a tab
[b to go to the previous buffer
]b to go to the next buffer
[n to go to the previous SCM conflict marker
]n to go to the next SCM conflict marker

----
\t SuperTab

----
\rt Tagbar
----
SnipMate: <TAB> to expend to snippets and <TAB> again to go to the next element

\\w -> first letter of the word; the right letter

-----
ManyCursor

VisualMode, Select the word, <C-n> to place a cursor and search for the next occur
<C-x> to pass without selecting

-----
FORMAT JSON

%!python -m json.tool

-----
Ctag

jump to method definition using :tag -> <C-]>
<C-t> to go back

rbenv-ctags <<< to enable gem tags

----------
SELECT

yiw        (yank inner word)
viw        (visually select inner word)

dip (delete in paragraph)

---------
BUFFER SIZE
minus 30 left: <C-w> 30 <

Close all other buffers: :BufOnly

With bufexplorer, you can quickly and easily switch between buffers by using the one of the default public interfaces (leader):
'be' (normal open) or 'bt' (toggle open / close) or 'bs' (force horizontal split open) or 'bv' (force vertical split open)

---------
3yy -> yeld 3 lines
40ggp -> go at line 40 and paste
pgvy -> paste and re yank <-------
----

Change inside ""
Example -> your are inside '' like suck 'myword'
ci' -> change inside '' will delete what is inside

----

 <C-L> refresh screen

---
Syntactic
Using :SyntasticToggleMode you can toggle Syntastic into passive mode

------
Highlight all the same word
-> cursor on the word -> gd
-> n to go next

Moving windows:
Starting with this:

____________________
| one       | two  |
|           |      |
|           |______|
|           | three|
|           |      |
|___________|______|
Make 'three' the active window, then issue the command ctrl-w J. This moves the current window to fill the bottom of the screen, leaving you with:

____________________
| one       | two  |
|           |      |
|___________|______|
| three            |
|                  |
|__________________|
Now make either 'one' or 'two' the active window, then issue the command ctrl-w r. This 'rotates' the windows in the current row, leaving you with:

____________________
| two       | one  |
|           |      |
|___________|______|
| three            |
|                  |
|__________________|
Now make 'two' the active window, and issue the command ctrl-w H. This moves the current window to fill the left of the screen, leaving you with:

____________________
| two       | one  |
|           |      |
|           |______|
|           | three|
|           |      |
|___________|______|
As you can see, the manouevre is a bit of a shuffle. With 3 windows, it's a bit like one of those 'tile game' puzzles. I don't recommand trying this if you have 4 or more windows - you'd be better off closing them then opening them again in the desired positions.

---from vim to tmux (vim-slime)

select region and:
xmap <c-c><c-c> <Plug>SlimeRegionSend
nmap <c-c><c-c> <Plug>SlimeParagraphSend
nmap <c-c>v     <Plug>SlimeConfig

:SlimeConfig -> default, pane_number

********************
Temporaly switch to console :!bash  (then C-d)

__________________________ ensime vim _______________________

|:EnClasspath            generates classpath for ensime and launch ensime-server
|:EnType                 displays type under cursor
|:EnSearch               search for a public symbol
|:EnSymbol               displays the path where the symbol under cursor was declared
|:EnDeclaration          open buffer where the symbol under cursor was declared
|:EnDeclarationSplit     split window where the symbol under cursor was declared
|:EnDocUri               displays documentation url under cursor
|:EnDocBrowse            launch $BROWSER (env variable) documentation url
|:EnTypeCheck            launch a check on current file (launched on save)
|:EnToggleFullType       set ensime to return either shallow types or full types
|:EnCompleteFunc         get an omnicompletion menu (via ctrl+X ctrl+O) - blocking
|:EnFormatSource         format file based (see https://github.com/ensime/ensime-emacs/wiki/Scalariform-Preferences)
|:EnSetBreak             add a breakpoint on current line
|:EnRename               rename symbol under cursor
|:EnClearBreaks          remove all breakpoints
|:EnDebug class          start debugging the specified class
|:EnContinue             continue debugging after pause
|:EnBacktrace            show backtrace when execution is paused in a new buffer

####################### tmux #########################

swap window, source target: swap-window -s 5 -t 6

***********
MOUSE:
brew cask install easysimbl
D/l MouseTerm

-----------------------
SPACEMACS COLORS

First I had to uninstall my previous version of emacs and then install the patched version.

brew uninstall emacs
brew tap choppsv1/term24
brew install choppsv1/term24/emacs

Also for anyone interested this is a fast way to install the nightly version of iTerm2. By default casks will install to ~/Applications. Run install with --appdir if you want it elsewhere. Cask usage

brew tap caskroom/versions
brew cask install iterm2-nightly

Then run emacs with the flag mentioned here.

ITERM_24BIT=1 emacs

The last thing I need to figure out is how to fix the bad characters at the bottom. I have iTerm set to use Source Code Pro for both the ASCII and non ASCII font.

Other minor things not working for me:
The cursor is not colored like in GUI emacs.
There is no highlight on mouseover for clickable items.
---------------------------

################ EMACS #################

Important:

C-h C-h (help)
C-g quit the mini-buffer
M-x

C-_ Undo (C-x u)
C-w cut
C-y paste

// Copy/Cut/Paste Commands:
// ------------------------
// C-y     : Pastes whatever is in the clipboard at the cursor.
//           Subsequent C-y's will keep on pasting.
// C-space : Starts marking/highligting a region.
// C-k     : Kills/deletes the whole line, puts it into the clipboard.
// M-w     : Copies this region into the clipboard.
// C-w     : Cuts this region into the clipboard (deletes the region and copies it to clipbrd)

Rectangle 

C-SPC To select a region, move the point to one end of your desired region. C-space again to reactivate the mark
C-w cut
C-y paste
C-

C-x r k Kill the text of the region-rectangle, saving its contents as the “last killed rectangle” (kill-rectangle).
C-x r M-w Save the text of the region-rectangle as the “last killed rectangle” (copy-rectangle-as-kill).
C-x r d Delete the text of the region-rectangle (delete-rectangle).
C-x r y Yank the last killed rectangle with its upper left corner at point (yank-rectangle).


Buffer

C-x b switch buffer
C-x right and C-x left: cycle through buffers sequentially with the key combos 
C-x k, which will prompt you in the mini-buffer for the name of the buffer to kill 

C-x C-f Open file (need to enter the path)
C-x C-s Save file
C-x C-w Save As
M-x recover-file: recovers the auto-saved file.

Move window

C-x o jump
C-x 0 : close the active window
C-x 1 : close all windows except the active window
C-x 2 : split the active window vertically into two horizontal windows
C-x 3 : split the active window horizontally into two vertical windows
C-x o : change active window to next window

ensime emacs

C-c C-v e ensime-print-errors-at
C-c C-r t ensime-import-type-at
C-c C-v t ensime-print-type-at
C-c C-v i ensime-inspect-type-at
C-c C-t t ensime-goto-test
C-c C-b o ensime-sbt-do-test-only
M-. ensime-edit-definition

REFACTORING

C-c C-r r ensime-refactor-rename
C-c C-v f ensime-format-source

Search

C-c C-v v search

GENERAL

C-x b switch-to-buffer

=============

C-x C-t Transpose two lines (transpose-lines).

MOVE
C-a Move to the beginning of the line (move-beginning-of-line).
C-e Move to the end of the line (move-end-of-line).

++++
C-space select
C-x r y Yank the last killed rectangle with its upper left corner at point (yank-rectangle).
======================
emacs neotree
copy: C-c C-p


=------------SPACEMACS ------------

- NEOTREE
SPC f t     NeoTree Toggle
¦	        open file in an vertically split window
-	        open file in an horizontally split window
R          make current root
K          doto parent

-- WINDOW
SPC w h       window on the left
SPC w l       window on the right
SPC w m	      maximize/minimize a window 
SPC w .	   initiate micro-state
         [	shrink window horizontally
         ]	enlarge window horizontally 
         {	shrink window vertically
         }	enlarge window vertically
         c	close window
         C	close other windows

-- SEARCH FILE
SPC p f       fuzzy search
C-c o         open split vertically 
C-g           Quit
SPC s p       smart search in files
SPC r l       resumes the last helm listing

BUFFER

SPC b b list all recent buffers
SPC f r list all recent file opened 

-- CONFIG
Config SPC f e d 
Reload config SPC f e R

--- text
 remove all trailing whitespace you can enter SPC x d w
