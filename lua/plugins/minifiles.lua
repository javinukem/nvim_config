return { "nvim-mini/mini.files",
        version= "*",
            config = function()
        require("mini.files").setup()
            vim.keymap.set("n", "<leader>fm", function()
                require("mini.files").open()
            end, { desc = "Open Mini Files" })
    end,

    }
