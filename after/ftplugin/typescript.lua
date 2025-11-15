local set = vim.opt_local

set.shiftwidth = 2

vim.keymap.set("n", "<leader>tf", "<cmd>terminal deno test % --allow-read<CR>", {
  buffer = true,
  silent = true,
  desc = "Test file with deno",
})
