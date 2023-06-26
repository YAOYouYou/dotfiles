local vim = vim
local opts = { noremap = true, silent = true }

-- delete lazyvim keymap
vim.keymap.del("n", "<C-h>", opts)
vim.keymap.del("n", "<C-l>", opts)
vim.keymap.del("n", "<C-j>", opts)
vim.keymap.del("n", "<C-k>", opts)
vim.keymap.del("n", "<leader>l", opts)

--
vim.keymap.set("n", ";", ":")

-- cursor jumper between screen
vim.keymap.set("n", "<leader>l", "<c-w>l", opts)
vim.keymap.set("n", "<leader>k", "<c-w>k", opts)
vim.keymap.set("n", "<leader>h", "<c-w>h", opts)
vim.keymap.set("n", "<leader>j", "<c-w>j", opts)

-- split screen
vim.keymap.set("n", "<C-s>k", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
vim.keymap.set("n", "<C-s>j", ":set splitbelow<CR>:split<CR>", opts)
vim.keymap.set("n", "<C-s>h", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
vim.keymap.set("n", "<C-s>l", ":set splitright<CR>:vsplit<CR>", opts)

-- adjust window size
vim.keymap.set("n", "<up>", ":res +5<cr>", opts)
vim.keymap.set("n", "<down>", ":res -5<cr>", opts)
vim.keymap.set("n", "<left>", ":vertical resize+5<cr>", opts)
vim.keymap.set("n", "<right>", ":vertical resize-5<cr>", opts)

-- plugin
vim.keymap.set("n", "<leader>e", require("nvim-tree.api").tree.toggle)
