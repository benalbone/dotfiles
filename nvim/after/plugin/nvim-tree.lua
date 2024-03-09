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
        relativenumber = true,
        side = "right",
        float = {
            open_win_config = {
                border = "rounded",
                relative = "editor",
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
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

-- the following will open nvim-tree when nvim opens without 
-- a file being specified

-- if vim.fn.argc(-1) == 0 then
--    vim.cmd("NvimTreeFocus")
-- end
