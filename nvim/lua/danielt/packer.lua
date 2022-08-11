-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")
    use("ellisonleao/gruvbox.nvim")
    use("tversteeg/registers.nvim")
    use("kevinhwang91/nvim-hlslens")
    --Statusline
    use("nvim-lualine/lualine.nvim")
    --Indentation line & whitespaces
    use("lukas-reineke/indent-blankline.nvim")
    --Highlighting
    use("RRethy/vim-illuminate")
    --Scroll
    use("karb94/neoscroll.nvim")
    use("petertriho/nvim-scrollbar")
    --LSP
    use("neovim/nvim-lspconfig")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    --Telescope
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use("nvim-telescope/telescope-file-browser.nvim")
    use("kyazdani42/nvim-web-devicons")
    --Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use("romgrk/nvim-treesitter-context")
end)
