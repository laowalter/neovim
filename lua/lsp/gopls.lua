-- for golang
require'lspconfig'.gopls.setup{
    on_attach= require'completion'.on_attach;
    settings = {
        --completeopt={menuone,noinsert,noselect};
        --vim.o.shortmess=vim.o.shortmess .. c;
    };
    root_dir = require'lspconfig'.util.root_pattern(".git", "go", "gomod",".")
}

