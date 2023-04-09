-- vim.opt.guicursor = ""
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,i-ci-ve-r-cr:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false
-- tabstop is effectively how many columns of whitespace a \t is worth.
vim.opt.tabstop = 4
-- is how many columns of whitespace a tab keypress or a backspace keypress is worth.
vim.opt.softtabstop = 4
-- shiftwidth is how many columns of whitespace a “level of indentation” is worth.
vim.opt.shiftwidth = 4
-- expandtab means that you never wanna see a \t again in your file
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.opt.expandtab = false
    end,
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript, html, css",
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
        vim.opt.shiftwidth = 2
    end,
})

vim.opt.winbar = "%=%m %f"

-- vim.g.clipboard=unnamedplus

vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 2
vim.g.netrw_winsize = 30
vim.g.netrw_altv = 1
