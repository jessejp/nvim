vim.lsp.enable({
  -- .ts
  "vtsls",
  -- .lua
  "luals",
  -- vscode langserver extracted
  "jsonls",
  "cssls",
  "htmlls"
})

vim.diagnostic.config({ virtual_text = true })
