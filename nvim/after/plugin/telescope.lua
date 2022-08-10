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
