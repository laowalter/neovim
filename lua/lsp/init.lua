vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.completeopt = "menuone,noinsert,noselect"
vim.g.completion_matching_strategy_list = {"exact", "substring", "fuzzy", "all"}

require('lsp.lua')
require('lsp.gopls')   --golang
require('lsp.pyright') --python by npm -i pyright
require('lsp.html')    --html
require('lsp.tsserver')
require('lsp.css')     --css
require('lsp.bash')    --bash
require('lsp.json')    --json
