-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local api = require("nvim-tree.api")
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.keymap.set("n", "<c-e>", api.tree.toggle)

local function my_on_attach(bufnr)
    local function opts(desc)
        return {
            desc = "nvim-tree: " .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
        }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "<c-e>", api.tree.toggle, opts("Toggle"))
    vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

-- empty setup using defaults
require("nvim-tree").setup({
    view = {
        width = 30,
    },
    git = {
        enable = true,
    },
    on_attach = my_on_attach,
    filters = {
        custom = { "^.git$" },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
})
