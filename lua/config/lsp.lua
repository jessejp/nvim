vim.lsp.enable({
  -- .ts
  "vtsls",
  -- .lua
  "luals",
  -- vscode langserver extracted
  "jsonls",
  "cssls",

  -- .html
  "htmlls",
  "emmetls"
})

vim.diagnostic.config({ virtual_text = true })
