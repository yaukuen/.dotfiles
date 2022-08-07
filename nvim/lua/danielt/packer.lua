-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("ellisonleao/gruvbox.nvim")
    use("karb94/neoscroll.nvim")
    use("tversteeg/registers.nvim")
    use("petertriho/nvim-scrollbar")
    use("kevinhwang91/nvim-hlslens")
end)
