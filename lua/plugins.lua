-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  --use { 'sainnhe/gruvbox-material' }
  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }

  -- Fuzzy finder
  use {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }


  -- gpg2
  use { 'jamessan/vim-gnupg' }

  --Java Lsp
  use{ 'JuliaEditorSupport/julia-vim' }
  
  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}

  -- Rainbow | | | tab split notes
  use { 'p00f/nvim-ts-rainbow' }

  -- Auto Pair
  use { 'jiangmiao/auto-pairs' }

end)
