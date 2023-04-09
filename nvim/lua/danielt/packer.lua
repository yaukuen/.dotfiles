-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    --Telescope
    use("nvim-lua/plenary.nvim")
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use("nvim-telescope/telescope-file-browser.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("sbdchd/neoformat")
    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")
    use("tversteeg/registers.nvim")
    use("kevinhwang91/nvim-hlslens")
    --Git
    use("TimUntersberger/neogit")
    use("sindrets/diffview.nvim")
    use("lewis6991/gitsigns.nvim")
    --Statusline
    use("nvim-lualine/lualine.nvim")
    --Indentation line & whitespaces
    use("lukas-reineke/indent-blankline.nvim")
    --Highlighting
    use("RRethy/vim-illuminate")
    --Scroll
    use("karb94/neoscroll.nvim")
    use("petertriho/nvim-scrollbar")
    --Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    --LSP
    use("neovim/nvim-lspconfig")
    use {
        'hrsh7th/nvim-cmp',
        config = function ()
            require'cmp'.setup {
                snippet = {
                    expand = function(args)
                        require'luasnip'.lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = 'luasnip' },
                    -- more sources
                },
            }
        end
    }
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use {'tzachar/cmp-tabnine', run='./install.sh'}
    use("onsails/lspkind-nvim")
    use("simrat39/symbols-outline.nvim")
    --Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use("romgrk/nvim-treesitter-context")
    --Language Specific
    --Golang
    use("ray-x/go.nvim")
    use("ray-x/guihua.lua")
end)
