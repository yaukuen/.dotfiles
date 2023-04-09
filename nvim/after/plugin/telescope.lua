local Remap = require("danielt.keymap")
local nnoremap = Remap.nnoremap

local action_state = require("telescope.actions.state")
require("telescope").setup{
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        color_devicons = true,
        mappings = {
            i = {
                ["<c-a>"] = function() print(vim.inspect(action_state.get_selected_entry())) end
            }
        }
    }
}

require("telescope").load_extension("fzf")

require("telescope").load_extension("file_browser")

--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

local search_dotfiles = function()
    require("telescope.builtin").find_files({
        
    })
end

-- in lua/finders.lua
local finders = {}

-- Dropdown list theme using a builtin theme definitions :
local center_list = require"telescope.themes".get_dropdown({
    winblend = 5,
    -- width = 0.5,
    -- anchor = N,
    -- prompt = "bottom",
    -- results_height = 30,
    -- previewer = true,
    -- height = 0.9,
    preview_height = 0.5,
    layout_config= {
        height = 0.5,
        width = 0.9,
    },
})

-- Settings for with preview option
local with_preview = {
    winblend = 5,
    show_line = true,
    -- results_title = false,
    -- preview_title = false,
    layout_config = {
        preview_width = 0.6,
    },
}

-- Find in neovim config with center theme
finders.fd_in_project = function()
    local opts = vim.deepcopy(center_list)
    opts.prompt_prefix = "Find in project>"
    opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
    opts.search = vim.fn.input("Grep for Git Files >")
    require"telescope.builtin".grep_string(opts)
end
finders.fd_in_nvim = function()
    local opts = vim.deepcopy(center_list)
    opts.prompt_prefix = "Nvim>"
    opts.cwd = vim.fn.stdpath("config")
    opts.hidden = true
    require"telescope.builtin".fd(opts)
end

-- finders.fd_in_git_files = function()
--     local opts = vim.deepcopy(center_list)
--     opts.prompt_prefix = "Find in Git Files>"
--     require"telescope.builtin".git_files(opts)
-- end
-- Find files with_preview settings
function fd()
    local opts = vim.deepcopy(with_preview)
    opts.prompt_prefix = "FD>"
    require"telescope.builtin".fd(opts)
end

-- return finders

nnoremap("<leader>pgs", function()
    finders.fd_in_project()
end)

-- nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
    require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})
end)
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files(center_list)
    -- finders.fd_in_git_files()
end)
nnoremap("<leader>pf", function()
    require('telescope.builtin').find_files(with_preview)
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>vh", function()
    require('telescope.builtin').help_tags()
end)
nnoremap("<leader>vrc", function()
    finders.fd_in_nvim()
end)
nnoremap("<leader>gc", function()
    require("telescope.builtin").git_branches()
end)
-- nnoremap("<leader>gw", function()
--     require('telescope').extensions.git_worktree.git_worktrees()
-- end)
-- nnoremap("<leader>gm", function()
--     require('telescope').extensions.git_worktree.create_git_worktree()
-- end)
-- nnoremap("<leader>td", function()
--     require('theprimeagen.telescope').dev()
-- end)
