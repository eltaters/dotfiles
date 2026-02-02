return {
  "stevearc/conform.nvim",
  dependencies = { "clangd_extensions.nvim", "mason.nvim" },
  opts = function()
    local opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        objcpp = { "clang_format" },
        cuda = { "clang_format" },
        proto = { "clang_format" },
        python = {
          "ruff_fix",
          "ruff_format",
        },
      },
      formatters = {
        clang_format = {
          preprend_args = { "--style=file:/home/elwyn" },
        },
      },
    }
    return opts
  end,
}
