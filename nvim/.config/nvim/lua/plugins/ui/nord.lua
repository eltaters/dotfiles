--
-- Nord theme my beloved
--
--
return {
  "shaunsingh/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").set()
    vim.cmd("colorscheme nord")
    local colors = require("nord.colors")

    -- Make some colors easier to read
    require("nord.util").highlight("LspInlayHint", { fg = colors.nord3_gui_bright })
    require("nord.util").highlight("NonText", { fg = colors.nord3_gui_bright })
  end,
}
