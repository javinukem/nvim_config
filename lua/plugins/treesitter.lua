return {
	{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
	  require("nvim-treesitter").setup({
	ensure_installed = { "help", "python", "lua" }, -- parsers you want
	auto_install = true,
        highlight = { enable = true },  -- enable Treesitter highlighting
        indent = { enable = true },     -- enable Treesitter indentation
        incremental_selection = { enable = true }, -- optional
	}) 
  end,
}
}
