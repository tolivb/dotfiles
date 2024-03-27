local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- more good
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)


vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)

keymap('n', "<leader>u", function()
  vim.cmd.TSUpdate()
  vim.cmd.MasonUpdate()
end, { desc = "R[u]n TSUpdate, MasonUpdate" })

--keymap({ "n", "v" }, "<S-f>", "<cmd>Format<cr>")
keymap({ "n", "v" }, "<leader>0", "<cmd>e ~/.config/nvim/init.lua<cr>")

-- windows
keymap("n", "<C-q>", "<cmd>bw<cr>")
keymap("n", "<C-w>", "<C-w>w")

keymap("n", "<A-->", "<cmd>vertical resize -4<cr>", {desc = "vertical resize -4"})
keymap("n", "<A-0>", "<cmd>vertical resize +4<cr>", {desc = "vertical resize +4"})
keymap("n", "<A-1>", "<cmd>resize -4<cr>", {desc = "resize -4"})
keymap("n", "<A-2>", "<cmd>resize +4<cr>", {desc = "resize +4"})

