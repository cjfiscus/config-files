" -| Plugins |-
call plug#begin('~/.nvim/plugged')    
Plug 'tpope/vim-commentary'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
Plug 'klen/python-mode'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc

set t_Co=256
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

let g:pymode_python = 'python3'
