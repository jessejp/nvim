-- AUTOCOMPLETE
local capabilities = {
  textDocument = {
    foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }
  }
}

capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

---@type vim.lsp.ClientConfig
vim.lsp.config('vtsls', {
  -- typescript
  cmd = { "vtsls", "--stdio" },
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascript.jsx",
    "javascriptreact",
    "typescript",
    "typescript.tsx",
    "typescriptreact"
  },
  root_markers = { "jsconfig.json", "tsconfig.json" },
})
