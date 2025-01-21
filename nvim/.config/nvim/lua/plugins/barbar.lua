return {
    "romgrk/barbar.nvim",
    dependencies = "nvim-tree/nvim-web-devicons", -- for icons
    config = function()
        -- barbar.nvim configuration with updated icons option
        require("bufferline").setup({
            animation = true, -- Smooth animations when switching buffers
            auto_hide = true, -- Automatically hide tabline when only one buffer is open
            icons = {
                filetype = { enabled = true }, -- Enable filetype icons
                separator = { left = "▎", right = "" }, -- Customize separators
           },
            closable = true, -- Allow closing tabs with a close button
        })

        -- Keybindings for buffer navigation
        vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { silent = true })
        vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true })
        -- Keybinding for opening a new tab (buffer)
        vim.keymap.set("n", "<leader>tn", ":enew<CR>", { silent = true, desc = "New Tab" })

        -- Keybinding for closing the current tab (buffer)
        vim.keymap.set("n", "<leader>tc", ":BufferClose<CR>", { silent = true, desc = "Close Tab" })

        -- Keybinding for cycling through tabs
        vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { silent = true, desc = "Next Tab" })
        vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { silent = true, desc = "Previous Tab" })

    end,
}
