-- switch between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- move highlighted line up or down
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")

-- diagnostics
vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next)
