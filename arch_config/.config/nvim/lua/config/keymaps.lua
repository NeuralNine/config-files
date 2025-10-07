vim.keymap.set("n", "<MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<2-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<2-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<3-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<3-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "<4-MiddleMouse>", "<Nop>")
vim.keymap.set("i", "<4-MiddleMouse>", "<Nop>")

vim.keymap.set("n", "g/", ":noh<CR>")

vim.keymap.set('n', '<leader>rn', function()
  vim.lsp.buf.rename()
end, { noremap = true, silent = true })

