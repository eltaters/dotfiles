-- Nord theme my beloved
return {
  "shaunsingh/nord.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local colors = require("nord.colors")
    colors.nord0 = "#1E222A"

    require("nord").set()
    vim.cmd("colorscheme nord")

    vim.api.nvim_set_hl(0, "Normal", { bg = "#222630" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "#222630" })
    -- Lsp inlay highlights
    require("nord.util").highlight("LspInlayHint", { fg = colors.nord3_gui_bright })

    -- Explorer untracked files
    require("nord.util").highlight("NonText", {
      fg = colors.nord3_gui_bright,
    })
  end,
}
