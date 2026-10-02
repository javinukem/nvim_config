return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
        {
      "rcarriga/nvim-notify",
      config = function()
        require("notify").setup({
          background_colour = "#000000",
        })
      end,
    },
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup",       },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
      },
    })
  end,
}
