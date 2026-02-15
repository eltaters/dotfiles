-- Nord theme my beloved
return {
  "shaunsingh/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").set()
    vim.cmd("colorscheme nord")
    local colors = require("nord.colors")

    -- Lsp inlay highlights
    require("nord.util").highlight("LspInlayHint", { fg = colors.nord3_gui_bright })

    -- Explorer untracked files
    require("nord.util").highlight("NonText", {
      fg = colors.nord3_gui_bright,
    })
  end,
}
