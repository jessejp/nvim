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
return {
  -- typescript
  cmd = { "vtsls", "--stdio" },
  capabilities = capabilities,
  filetypes = { "typescript", "javascript" },
  root_markers = { "package.json" },

}
