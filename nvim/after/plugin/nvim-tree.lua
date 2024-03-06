-- OR setup with some options
require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
        relativenumber = true,
        
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
        custom = {
            "node_modules/.*",
        },
    },
    log = {
        enable = true,
        truncate = true,
        types = {
            diagnostics = true,
            git = true,
            profile = true,
            watcher = true,
        },
    },
})
if vim.fn.argc(-1) == 0 then
    vim.cmd("NvimTreeFocus")
end
