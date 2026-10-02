return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local dashboard = require("dashboard")

    dashboard.setup({
      theme = "doom",

      config = {
        header = {
          "",
          "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
          "████╗  ██║██║   ██║██║████╗ ████║",
          "██╔██╗ ██║██║   ██║██║██╔████╔██║",
          "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
          "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
          "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
          "",
        },

        center = {
          {
            icon = "  ",
            desc = "Find File",
            key = "f",
            action = "Telescope find_files",
          },
          {
            icon = "  ",
            desc = "Recent Files",
            key = "r",
            action = "Telescope oldfiles",
          },
          {
            icon = "  ",
            desc = "File Browser",
            key = "e",
            action = "lua MiniFiles.open()",
          },
          {
            icon = "  ",
            desc = "Config",
            key = "c",
            action = "edit ~/.config/nvim/init.lua",
          },
          {
            icon = "  ",
            desc = "Quit",
            key = "q",
            action = "qa",
          },
        },

        footer = function()
          return { "⚡ Neovim ready" }
        end,
      },
    })
  end,
}
