local colors = {
  black = "#3B4252",
  red = "#BF616A",
  green = "#A3BE8C",
  yellow = "#EBCB8B",
  blue = "#81A1C1",
  magenta = "#B48EAD",
  cyan = "#88C0D0",
  black_dark = "#4C566A",
  cyan_dark = "#8FBCBB",
}

-- Some code-related configs
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable the swapfile I don't know how to use well
vim.opt.swapfile = false

-- Preferred UI for snacks.nvim
vim.g.snacks_animate = false
vim.g.snacks_indent = false

-- To use the system clipboard.
vim.opt.clipboard = "unnamedplus"

-- testing some autocomplete stuff
vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = "#ffffff", bg = colors.black_dark })
vim.api.nvim_set_hl(0, "BlinkCmpKindConstant", { fg = "#ffffff", bg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = "#ffffff", bg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = "#ffffff", bg = colors.magenta })
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = "#ffffff", bg = colors.magenta })

vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = "#ffffff", bg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", { fg = "#ffffff", bg = colors.red })

vim.api.nvim_set_hl(0, "BlinkCmpText", { fg = "#ffffff", bg = colors.black })


-- Fancy inline diagnostics
vim.diagnostic.config({
  signs = false,       -- disables the 'E' sign on the left
  virtual_text = true, -- enables text on the right (inline)
  update_in_insert = false,
})

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pyflakes = { enabled = true },
        mccabe = { enabled = false },
        pycodestyle = { enabled = false },
        inlay_hints = {
          enabled = true, show_parameter_hints = true, show_return_types = true, show_variable_types = true
        }
      }
    },
  }
})

-- vim.lsp.config("basedpyright", {
--   settings = {
--     basedpyright = {
--       analysis = {
--         diagnosticMode = "off",
--       }
--     }
--   }
-- })

vim.g.nord_contrast = true
-- -- BlinkCmpKind
-- -- BlinkCmpKindClass
-- -- BlinkCmpKindColor
-- -- BlinkCmpKindConstant
-- -- BlinkCmpKindConstructor
-- -- BlinkCmpKindEnum
-- -- BlinkCmpKindEnumMember
-- -- BlinkCmpKindEvent
-- -- BlinkCmpKindField
-- -- BlinkCmpKindFile
-- -- BlinkCmpKindFolder
-- -- BlinkCmpKindFunction
-- -- BlinkCmpKindInterface
-- -- BlinkCmpKindKeyword
-- -- BlinkCmpKindMethod
-- -- BlinkCmpKindModule
-- -- BlinkCmpKindOperator
-- -- BlinkCmpKindProperty
-- -- BlinkCmpKindReference
-- -- BlinkCmpKindSnippet
-- -- BlinkCmpKindStruct
-- -- BlinkCmpKindText
-- -- BlinkCmpKindTypeParameter
-- -- BlinkCmpKindUnit
-- -- BlinkCmpKindValue
-- -- BlinkCmpKindVariable
