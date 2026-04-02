---@diagnostic disable: undefined-global
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

-- Standard settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false

-- Snacks settings
vim.g.snacks_animate = false
vim.g.snacks_indent = false


-- Autocomplete colors
vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = "#ffffff", bg = colors.black_dark })
vim.api.nvim_set_hl(0, "BlinkCmpKindConstant", { fg = "#ffffff", bg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = "#ffffff", bg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = "#ffffff", bg = colors.magenta })
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = "#ffffff", bg = colors.magenta })
vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = "#ffffff", bg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", { fg = "#ffffff", bg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpText", { fg = "#ffffff", bg = colors.black })

-- Inline diagnostics
vim.diagnostic.config({
  signs = false,       -- disables the 'E' sign on the left
  virtual_text = true, -- enables text on the right (inline)
  update_in_insert = false,
})

-- Some LSP config
vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        mccabe = { enabled = false },
        pycodestyle = { enabled = false }
      }
    }
  },
  on_attach = function(client)
    client.server_capabilities.documentSymbolProvider = false
    client.server_capabilities.workspaceSymbolProvider = false
  end
})

vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
  },

  on_attach = function(client, _)
    client.server_capabilities.definitionProvider = false
    client.server_capabilities.declarationProvider = false
    client.server_capabilities.referencesProvider = false
    client.server_capabilities.implementationProvider = false
    client.server_capabilities.typeDefinitionProvider = false
  end,
})
