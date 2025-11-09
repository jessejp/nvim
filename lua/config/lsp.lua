vim.lsp.enable({
  -- .ts
  -- "vtsls",

  -- deno
  "denols",

  -- .lua
  "luals",

  -- vscode langserver extracted
  "jsonls",
  "cssls",

  -- .html
  "htmlls",
  "emmetls",

  "tailwindcssls"
})

vim.diagnostic.config({ virtual_text = true })
