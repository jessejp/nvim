---@type vim.lsp.ClientConfig
return {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
}
