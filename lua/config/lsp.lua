local clients = {
  -- .lua
  "luals",

  -- vscode langserver extracted
  "jsonls",
  "cssls",

  -- .html
  "htmlls",
  "emmetls",

  "tailwindcssls",

  -- .ts
  "ts_ls",

  -- deno
  "denols"
}

vim.lsp.enable(clients)

-- vim.diagnostic.config(
--   {
--     virtual_text = true,
--     -- virtual_lines = { current_line = true }
--   }
-- )
