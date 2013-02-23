"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: shakerlxxv (Brian Shaver)
"             http://shaker.4-dogs.biz - shakerlxxv@gmail.com
"
" Maintainer: amix the lucky stiff
"             http://amix.dk - amix@amix.dk
"
" Version: 3.6.1 adapted from version 3.6 by amix
"
" Blog_post: 
"       http://amix.dk/blog/post/19486#The-ultimate-vim-configuration-vimrc
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Command mode related
"    -> Moving around, tabs and buffers
"    -> Statusline
"    -> Parenthesis/bracket expanding
"    -> General Abbrevs
"    -> Editing mappings
"
"    -> Cope
"    -> Minibuffer plugin
"    -> Omni complete functions
"    -> Python section
"    -> JavaScript section
"
"
" Plugins_Included:
"     > minibufexpl.vim - http://www.vim.org/scripts/script.php?script_id=159
"       Makes it easy to get an overview of buffers. I suggest using the updated
"       version provided by Federico Holgado, see the home link.
"           home -> https://github.com/fholgado/minibufexpl.vim
"           info -> :e ~/.vim/bundle/plugin/minibufexpl.vim
"           version -> (forked git project)
"
"     > bufexplorer - http://www.vim.org/scripts/script.php?script_id=42
"       Makes it easy to switch between buffers:
"           info -> :help bufExplorer
"           version -> ( ~ 7.2.8 forked a git repo, that was not official project )
"
"
"     > yankring.vim - http://www.vim.org/scripts/script.php?script_id=1234
"       Emacs's killring, useful when using the clipboard:
"           info -> :help yankring
"           version -> ( 14.0 forked a git repo, might be official )
"
"     > surround.vim - http://www.vim.org/scripts/script.php?script_id=1697
"       Makes it easy to work with surrounding text:
"           info -> :help surround
"           version -> (forked git project 20120914 - commit: 1a73f607f8f54)
"
"     > snipMate.vim - http://www.vim.org/scripts/script.php?script_id=2540
"       Snippets for many languages (similar to TextMate's):
"           info -> :help snipMate
"           version -> (forked git project 20120914 - commit: f5a75d075d)
"
"     > mru.vim - http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"           version -> (forked git project 20120914 - commit: c7018343f4)
"
"     > Command-T - http://www.vim.org/scripts/script.php?script_id=3025
"       Command-T plug-in provides an extremely fast, intuitive mechanism for opening files:
"           info -> :help CommandT
"           screencast and web-help -> http://amix.dk/blog/post/19501
"           version -> ( 1.3.1 forked git repo 20120914 - commit: eeaa7bcff0d)
"           (DISABLED seg faults)
"
"     > dbext - http://www.vim.org/scripts/script.php?script_id=356
"       dbext  contains functions/mappings/commands to enable Vim to access several
"       databases. Current databases supported are: Mysql, PostgreSQL, Ingres, Oracle,
"       Oracle Rdb (VMS), Sybase Adaptive Server Anywhere, Sybase Adaptive Server Enterprise,
"       Microsoft SQL Server, DB2, Interbase and SQLite and ODBC are supported
"           homepage: http://vim.sourceforge.net/script.php?script_id=356
"           version -> 13.0
"           DISABLED - not being used.
"
"     > matchit - http://www.vim.org/script.php?script_id=39
"       matchit script allows you to configure % to match more than just 
"       single characters.  You can match words and even regular expressions. 
"            versoin -> 1.13.2
"            DISABLED - don't think its necessary
"
"     > rails - http://www.vim.org/scripts/script.php?script_id=1567
"       rails plugin provides enhanced editing features for rails projects
"       which rival the functionality you typically see depicted in TextMate
"           homepage: http://rails.vim.tpope.net/
"           version -> (forked git project 20120914 - commit: 9fb06f5af5)
"
"     > textobj-user - http://www.vim.org/scripts/script.php?script_id=2100 
"       textobj-user is a Vim plugin to SUPPORT writing user-defined text objects,
"       especially, simple text objects which can be defined by regular expression
"           version -> (forked git project 20120914 - commit: 1b738334952a)
"
"     > rubyblock - http://www.vim.org/scripts/script.php?script_id=3382
"       rubyblock is an implementation of text objects which is built on textobj-user
"           version -> 0.0.2
"           DISABLED
"
"     > indent-object - http://www.vim.org/scripts/script.php?script_id=3037
"       indent-object defines a new text object, based on indentation levels
"           version -> 1.1.2
"           DISABLED
"
"     > ragtag - http://www.vim.org/scripts/script.php?script_id=1896
"       ragtag is a collection of mappings for editing a variety of filetypes including
"        html, xhtml, wml, xml, xslt, xsd, jsp, php, aspperl, aspvbs, cf, mason, htmldjango,
"        and eruby
"           version -> (forked git project 20120914 - commit: 2f639ea61a) 2.0
"
"  Revisions:
"     > 3.6.2: After upgrade to Fedora 17 VIM generated core files with 
"              current vim runtime environment, so I'm refactoring to use
"              pathogen to hopefully make the plugin management a little
"              easier. Core files were comming from Command-T plugin
"     > 3.6.1: Adapted for my personal use, but I'm leaving all the great
"              comments and attributions in here:
"		+ added system specific vimrc logic
"		+ turned ON lazyredraw to follow the suggested comment
"		+ turned on the visualbell, otherwise I'll hit ESC even more
"		+ corrected encoding utf8 ==> utf-8
"		+ added .git to ignored grep directories
"     > 3.6: Added lots of stuff (colors, Command-T, Vim 7.3 persistent undo etc.)
"     > 3.5: Paste mode is now shown in status line  if you are in paste mode
"     > 3.4: Added mru.vim
"     > 3.3: Added syntax highlighting for Mako mako.vim 
"     > 3.2: Turned on python_highlight_all for better syntax
"            highlighting for Python
"     > 3.1: Added revisions ;) and bufexplorer.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen ( plugin management )
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MySys()
    if has("win32")
	return "windows"
    else
	return "linux"
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
" also affects how many search and commands will be stored in 
" viminfo file.
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Prevent autocmd from appearing twice when vimrc is sourced again
" Remove ALL autocommands for the current group.
:autocmd!

" Fast editing of the .vimrc
" When vimrc is edited, reload it
if MySys() == "windows"
  map <leader>e :e! ~/_vimrc<cr>
  autocmd! bufwritepost _vimrc source ~/_vimrc
else
  map <leader>e :e! ~/.vimrc<cr>
  autocmd! bufwritepost .vimrc source ~/.vimrc
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

" set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" backspace:  '2' allows backspacing" over
" indentation, end-of-line, and start-of-line.
" see also "help bs".
" set   backspace=2

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set lazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set visualbell
" set t_vb=
set tm=500 " how long to wait for key codes in mapped key sequence
set nomousehide

set   showcmd " show partial commands in the last line of the screen
set   showmode "Displays the current mode Insert,Replace,Visual in cmd line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
if MySys() == "mac"
  set gfn=Menlo:h14
  set shell=/bin/bash
elseif MySys() == "windows"
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif MySys() == "linux"
  set gfn=Monospace\ 10
  set shell=/bin/bash
endif

if has("gui_running")
  " set guioptions-=T " remove the toolbar
  set t_Co=256
  set background=dark
  colorscheme darkblue "peaksea transparent
  set nonu
else
  colorscheme zellner
  set background=dark
  
  set nonu
endif

set encoding=utf-8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types to match for line endings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
" set nobackup " don't keep backup files after saving a new file
" set nowb " don't keep a backup file while writing a file
" set noswapfile " don't keep a swap file to manage, not good for big files

"Persistent undo available since VIM 7.3
try
    if MySys() == "windows"
      set undodir=C:\Windows\Temp
    else
      set undodir=~/.vim/undodir " requires amix install dirs
    endif
    set undofile
catch
endtry

" read/write a .viminfo file
"  '100 --> remembering marks for 100 previous files
"  "500 --> store contents of registers up to 500 lines
set viminfo='100,\"500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr " break long lines, for display only, no EOLs
set tw=500 " textwidth

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
" Valid names for keys are:  <Up> <Down> <Left> <Right> <Home> <End>
" <S-Left> <S-Right> <S-Up> <PageUp> <S-Down> <PageDown> <LeftMouse>
"
" Many shells allow editing in "Emacs Style".
" Although I love Vi, I am quite used to this kind of editing now.
" So here it is - command line editing commands in emacs style:
" Note:  More info about this is in the helptexts:  :help emacs-keys
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>


" Useful on some European keyboards
map ½ $
imap ½ $
vmap ½ $
cmap ½ $


func! Cwd()
  let cwd = getcwd()
  return "e " . cwd 
endfunc

func! DeleteTillSlash()
  let g:cmd = getcmdline()
  if MySys() == "linux" || MySys() == "mac"
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
  else
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
  endif
  if g:cmd == g:cmd_edited
    if MySys() == "linux" || MySys() == "mac"
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
    else
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
    endif
  endif   
  return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
  return a:cmd . " " . expand("%:p:h") . "/"
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Specify the behavior when switching between buffers 
try
  set switchbuf=usetab
  set stal=2
catch
endtry

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if MySys() == "mac"
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

set guitablabel=%t


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
map <leader>cc :botright cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>u :TMiniBufExplorer<cr>

""""""""""""""""""""""""""""""
" => snipMate plugin
""""""""""""""""""""""""""""""
" reload all snippets
map <leader>sm :call ReloadAllSnippets()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
"original mapping was to ,sa; however, this conflicted with dbext plugin
map <leader>s+ zg
map <leader>s? z=


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => C code stuff
"""""""""""""""""""""""""""""""
"   if has("autocmd")
"      augroup cprog
"           " Remove all cprog autocommands
"           " au!
"
"           " When starting to edit a file:
"           "   For C and C++ files set formatting of comments and set C-indenting on.
"           "   For other files switch it off.
"           "   Don't change the order, it's important that the line with * comes first.
"           autocmd FileType *      set formatoptions=tcql smartindent comments& sw=4
"           autocmd FileType c,cpp  set formatoptions=croq cindent shiftwidth=4 comments=sr:/*,mb:*,el:*/ cinoptions=>s,es,ns-1,{0,}0,^0,:0.5s,=0.5s,ps,ts,+s,(s,)20,*30
"       augroup END
"   endif

""""""""""""""""""""""""""""""
" => for use with mutt
"""""""""""""""""""""""""""""""
" don't quote signatures on reply
" au BufRead /tmp/mutt* ^normal :g/^> -- $/,/^$/-1d^M/^$^M^L

""""""""""""""""""""""""""""""
" => Ruby Stuff
"""""""""""""""""""""""""""""""
" Load matchit (% to bounce from do to end, etc.)
runtime! plugins/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,haml,cucumber,coffee set ai sw=2 sts=2 et
augroup END

" see :help rails for more information about the various commands below
" set for the rails.vim plugin
if !exists("browser_command_defined")
    let browser_command_defined = 1
    if MySys() == "mac"
		:command -bar -nargs=1 OpenURL :!open <args>
    elseif MySys() == "windows"
		:command -bar -nargs=1 OpenURL :!start cmd /cstart /b <args>
    elseif MySys() == "linux"
        :command -bar -nargs=1 OpenURL :!google-chrome <args>
    endif
endif

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
if has('ruby')
    let g:CommandTMaxHeight = 15
    set wildignore+=*.o,*.obj,.git,*.pyc
    noremap <leader>j :CommandT<cr>
    noremap <leader>y :CommandTFlush<cr>
endif


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = '.git RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC (mappings)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
"Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>
au BufRead,BufNewFile ~/buffer iab <buffer> xh1 ===========================================
map <leader>pp :setlocal paste!<cr>
map <leader>bb :cd ..<cr>
" Quick insertion of an empty line:
nmap <CR> o<ESC>
" wraps current word with parenthesis
map <F6> viw"xc()h"xp
" inserts a ; in column 0 of the current line
map <F7> gI;j
" quick way to move between buffers using a list
map <F5> :buffers<CR>:buffer<Space>
" Use "bc" to evaluate the arithmetic expression on the current line
" with a precision of '6' digits after the comma.
" It is assumed that the current line contains only the expression.
" The rsult is read in after the current line.
map #BC ^y$:r!echo 'scale=6; <c-r>"'\|bc<cr>
" Add all numbers in the current visual selection.
vmap ,add !awk '{total += $1 ; print} ; END {print total}'

