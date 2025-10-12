vim.g.mapleader = "<Space>"

require("config.lazy")
require("config.lsp")

vim.opt.winborder = "rounded"
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":.lua<CR>")


-- Normal Mode Indent
vim.keymap.set('n', '<Tab>', '>>', { desc = 'Indent line' })
vim.keymap.set('n', '<S-Tab>', '<<', { desc = 'Un-indent line' })

-- Visual Mode Indent
vim.keymap.set('v', '<Tab>', '>gv', { desc = 'Indent selection' })
vim.keymap.set('v', '<S-Tab>', '<gv', { desc = 'Un-indent selection' })


-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
