set showmode
set number
set tabstop=4
set cursorline
set autoindent
:filetype on

" Return to last edit position when opening files
" from: amix.dk/vim/vimrc.html
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\	exe "normal! g`\"" |
	\ endif

" Delete trailing white space on save, useful for Python and CoffeeScript
" from: amix.dk/vim/vimrc.html
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal 'z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWritePost *.cpp :!c++ -std=c++11 %

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap [ []<Esc>i

" autocmd VimEnter *.cpp :inoremap { {<CR>}<Esc>ko<Tab>
autocmd FileType cpp	call Cpp_Option()
function Cpp_Option()
	inoremap { {<CR>}<Esc>ko<Tab>
endfunction

autocmd FileType c	call C_Option()
function C_Option()
	inoremap { {<CR>}<Esc>ko<Tab>
endfunction
	"\ if &filetype == 
map ㅗ h
map ㅓ j
map ㅏ k
map ㅣ l
cm ㅂ q
cm ㅈ w
