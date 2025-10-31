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
          'ruff_fix', -- To fix lint errors. (ruff with argument --fix)
          'ruff_format', -- To run the formatter. (ruff with argument format)
        }
      },
      formatters = {
        clang_format = {
          preprend_args = {"--style=file:/home/elwyn"}
        }
      }
    }
    return opts
  end,
}
