syntax on
filetype plugin indent on

set ts=2 sts=2 sw=2 et ai si
set relativenumber " nu absolute number lines "

call plug#begin()

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'tomasiser/vim-code-dark'
  Plug 'chrisbra/colorizer'
  Plug 'pangloss/vim-javascript'
  Plug 'mattn/emmet-vim'
  Plug 'ap/vim-css-color'
  Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'

endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

colorscheme default

set t_Co=256
set t_ut=
let g:codedark_transparent=1
colorscheme codedark

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

" Emmet shortcuts
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" vim-indent 
" let g:indent_guides_enable_on_vim_startup = 1

" CocInstall coc-clangd coc-clang-format-style-options coc-cmake coc-css coc-cssmodules coc-coc-hightlight coc-git coc-html coc-htmlhint coc-html-css-support coc-json coc-java coc-lightbulb coc-markdownlint coc-markdown-preview-enhanced coc-prettier coc-python coc-r-lsp coc-stylintplus coc-stylelint coc-snippets coc-spell-checker coc-sql coc-stylua coc-tsserver coc-webview
