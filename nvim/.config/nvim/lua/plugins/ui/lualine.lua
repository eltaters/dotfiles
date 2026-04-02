-- Pretty status bar in the bottom.
-- What shows the NORMAL/INSERT/VISUAL/etc modes and some git stuff.
-- return {
    -- 'nvim-lualine/lualine.nvim',
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }
-- }
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
	theme = "nord"
  }
}

