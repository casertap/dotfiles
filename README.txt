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

---------
BUFFER SIZE
minus 30 left: <C-w> 30 < 
---------

Highlight all the same word
-> cursor on the word -> gd
-> n to go next

********************

tmux:
swap window, source target: swap-window -s 3 -t 1