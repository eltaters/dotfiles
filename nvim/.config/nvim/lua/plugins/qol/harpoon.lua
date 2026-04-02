-- u
-- Easier access to files by striking them in the chest with a Harpoon. 
--
--
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>H",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>hh",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        '<leader>ha',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = "Harpoon to file 1"
      },
      {
        '<leader>hs',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = "Harpoon to file 2"
      },
      {
        '<leader>hd',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = "Harpoon to file 3"
      },
      {
        '<leader>hf',
        function()
          require('harpoon'):list():select(1)
        end,
        desc = "Harpoon to file 4"
      }
    }
    for i = 1, 4 do
      table.insert(keys, {
        "<leader>h" .. i,
        function()
          require("harpoon"):list():replace_at(i)
        end,
        desc = "Replace harpooned file " .. i,
      })
    end

    return keys
  end,
}
