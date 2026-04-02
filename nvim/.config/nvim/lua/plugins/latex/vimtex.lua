--
-- The power of LaTeX in neovim.
--
--
return {
  {
    "lervag/vimtex",
    lazy=false,
    -- ft = { "tex", "latex" },
    init = function()
      vim.g.vimtex_view_method = "zathura_simple"
      vim.g.vimtex_view_zathura_use_synctex = false
      vim.g.vimtex_quickfix_mode = 0
    end,
  },
  {
    "micangl/cmp-vimtex",
    ft = { "tex", "latex" },
  },
}
