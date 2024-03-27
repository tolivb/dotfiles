local M = { "tpope/vim-fugitive" }

function M.config()
  vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>')
  vim.keymap.set('n', '<leader>gq', '<cmd>Gquit<CR>')
  vim.keymap.set('n', '<leader>gp', '<cmd>Gpull<CR>')
end

return M
