--- @type vim.lsp.Config
return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "html",
    "javascriptreact",
    "javascript.jsx",
    "typescriptreact",
    "typescript.tsx"
  },
  root_markers = {
    'tailwind.config.js',
    'tailwind.config.ts',
  }
}
