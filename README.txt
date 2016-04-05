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
----

Change inside ""
Example -> your are inside '' like suck 'myword'
ci' -> change inside '' will delete what is inside

----

 <C-L> refresh screen

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

********************

tmux:
swap window, source target: swap-window -s 5 -t 6

***********

brew install tig
tig: git visualizer

MOUSE:
brew cask install easysimbl
D/l MouseTerm

-----------------------
MAKE COLORS WORKS WITH SPACEMACS

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
