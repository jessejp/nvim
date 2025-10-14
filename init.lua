vim.g.mapleader = "<Space>"

require("config.lazy")
require("config.lsp")

vim.o.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.winborder = "rounded"
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

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
  end
})

--local job_id = 0
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 8)

  --job_id = vim.bo.channel
end)

-- Open Oil file viewer in current buffer's directory
vim.keymap.set("n", "-", "<cmd>Oil<CR>")
