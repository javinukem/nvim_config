-- allows for transparent backgroudn
return {
  {
    "xiyaowong/transparent.nvim",  -- plugin string
    lazy = false,                  -- Important: do not lazy-load
    config = function()
      require("transparent").setup({
        groups = {
          "Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier",
          "Statement", "PreProc", "Type", "Underlined", "Todo", "String",
          "Function", "Conditional", "Repeat", "Operator", "Structure",
          "LineNr", "NonText", "SignColumn", "CursorLine", "CursorLineNr",
          "StatusLine", "StatusLineNC", "EndOfBuffer",
        },
        extra_groups = {},        -- additional groups to clear
        exclude_groups = {},      -- groups to exclude
        on_clear = function() end -- code to run after clearing
      })
    end,
  }
}

