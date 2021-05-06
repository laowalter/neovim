require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.gopls.setup{
    on_attach= require'completion'.on_attach;
    settings = {
        completeopt={menuone,noinsert,noselect};
        shortmess={c};
    };
    root_dir = require'lspconfig'.util.root_pattern(".git", "go", "gomod")
}
