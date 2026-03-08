return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'super-tab' },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- Only show the documentation popup when manually triggered
    completion = { 
      documentation = { auto_show = false },
      menu = {
        draw = {
          padding = { 0, 1 }, -- padding only on right side
          components = {
            kind_icon = {
              text = function(ctx) return ' ' .. ctx.kind_icon .. ctx.icon_gap .. ' ' end
            },
            kind = {
              text = function(ctx)
                return ' ' .. ctx.kind .. ' '
              end,
              highlight="None"
            }
          },
          columns = {
            { "kind_icon" },           -- first column: main text
            { "label", "kind" } -- second column: icon + kind
          }
        }
      }
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- Can be replaced with `implementation = "lua"` 
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" }
}
