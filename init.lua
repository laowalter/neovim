-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command


-- Sensible defaults
require('settings')

-- Key mappings
require('keymappings')

-- Plugin
require('plugins')

-- LSP
require('lsp')


vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
