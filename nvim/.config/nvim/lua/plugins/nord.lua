return {
  'shaunsingh/nord.nvim',
  config = function()
    require('nord').set()
    local colors = require('nord.colors')
    require('nord.util').highlight('LspInlayHint',
      { fg = colors.nord3_gui_bright, style = 'italic' }
    )
  end
}
