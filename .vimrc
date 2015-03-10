syntax enable
set background=dark
"let g:solarized_termcolors = 256
let g:solarized_visibility ="low"
colorscheme solarized
"let g:gruvbox_italic=0
"colorscheme gruvbox 
"highlight Comment ctermfg=238
"highlight LineNr ctermbg=235 ctermfg=236
"highlight CursorLine ctermbg=235
set number
set numberwidth=4
set cursorline
set ruler
set tabstop=2
set softtabstop=2
set expandtab
set wildmenu
set lazyredraw
set showmatch
set foldenable
set shiftwidth=2
set autoindent

" move vertically by visual line
noremap j gj
noremap k gk

"move to beginning/end of line
nnoremap B ^
nnoremap E $

set noswapfile
au BufReadPost Gemfile set syntax=ruby
au BufReadPost Rakefile set syntax=ruby
au BufRead,BufNewFile *.md set filetype=markdown
set incsearch
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
function! InsertTabWrapper()
  let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
