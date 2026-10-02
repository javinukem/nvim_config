vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "G", "Gzz", { noremap = true, desc = "Go to bottom and center" })
vim.keymap.set("n", "gg", "ggzz", { noremap = true, desc = "Go to top and center" })

vim.keymap.set("n", "n", "nzz", { noremap = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true })
vim.keymap.set("n", "*", "*zz", { noremap = true })
vim.keymap.set("n", "#", "#zz", { noremap = true })
vim.keymap.set("n", "g*", "g*zz", { noremap = true })
vim.keymap.set("n", "g#", "g#zz", { noremap = true })

vim.keymap.set("n", "H", "<Cmd>BufferPrevious<CR>", {noremap = true, silent=true})
vim.keymap.set("n", "L", "<Cmd>BufferNext<CR>", {noremap = true, silent=true})

vim.keymap.set("n", "<leader>bd", ":BufferClose<CR>", { desc = "Close buffer (barbar)" })

-- splits
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "Split vertical" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "Split horizontal" })
vim.keymap.set("n", "<leader>wd", function()
  if #vim.api.nvim_list_wins() > 1 then
    vim.cmd("close")
  end
end, { desc = "Close window" })

-- window navigation (Ctrl + hjkl)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go right window" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
        desc = "Show diagnostic",
      })

