--
-- lua/plugins/conform.lua
--

return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_errors = false,
    default_format_opts = { lsp_format = 'fallback' },
    format_on_save = { timeout_ms = 500 },
    formatters_by_ft = {},
  },
}
