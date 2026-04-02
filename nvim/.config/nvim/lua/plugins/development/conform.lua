--
-- Formatting file plgin.
--
--
--
return {
  "stevearc/conform.nvim",
  dependencies = { "mason-org/mason.nvim", "p00f/clangd_extensions.nvim" },
  lazy = false,
  keys = {
    {
      "<leader>cF",
      function()
        require("conform").format({ timeout_ms = 3000 })
      end,
      mode = { "n", "x" },
      desc = "Format Injected Langs",
    },
  },
  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_format = "fallback", -- not recommended to change
    },
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
    formatters = {
      clang_format = {
        prepend_args = { "--style=file:/home/elwyn/.clang-format" },
      },
    },
  },
}
