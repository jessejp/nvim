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

--Example: Enable auto-completion and auto-formatting ("linting"): >lua
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    if not client:supports_method('textDocument/willSaveWaitUntil')
        and client:supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })

      vim.api.nvim_create_augroup("__formatter__", { clear = true })
      vim.api.nvim_create_autocmd("BufWritePost", {
        group = "__formatter__",
        command = ":FormatWrite",
      })
    end
  end,
})

local format_prettier = function()
  return {
    exe = "npx",
    args = { "prettier", "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--tab-width", "2", "--use-tabs", "false" },
    stdin = true
  }
end

require('formatter').setup {
  logging = true,
  filetype = {
    javascript = { format_prettier },
    typescript = { format_prettier },
    typescriptreact = { format_prettier },
  }
}
