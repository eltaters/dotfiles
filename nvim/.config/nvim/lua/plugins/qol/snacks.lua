--
-- Plugin that includes a TON of QoL functionality to neovim.
---@diagnostic disable: undefined-global
--
--
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    indent = { enabled = false },
    input = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
  },

  keys = {
    -- UI
    {
      "<leader>n",
      function() Snacks.picker.notifications() end,
      desc = "Notification History",
    },
    {
      "<leader>e",
      function() Snacks.explorer() end,
      desc = "File explorer",
    },
    {
      "<leader>un",
      function() Snacks.notifier.hide() end,
      desc = "Dismiss All Notifications",
    },

    -- Search
    {
      "<leader>sp",
      function() Snacks.picker.lazy() end,
      desc = "Search for Plugin Spec",
    },
    {
      "<leader>su",
      function() Snacks.picker.undo() end,
      desc = "Undo History",
    },

    -- Buffers
    {
      "<leader>bd",
      function() Snacks.bufdelete() end,
      desc = "Delete Buffer",
    },
    {
      "<leader>bo",
      function() Snacks.bufdelete.other() end,
      desc = "Delete Other Buffers",
    },
    {
      "<leader>ba",
      function()
        Snacks.bufdelete.other()
        Snacks.bufdelete()
      end,
      desc = "Delete All Buffers",
    },

  },

  -- Some extra dynamic toggles defined post-startup
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end

        -- Override print to use snacks for `:=` command
        if vim.fn.has("nvim-0.11") == 1 then
          vim._print = function(_, ...)
            dd(...)
          end
        else
          vim.print = _G.dd
        end

        -- Create some toggle mappings
        Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
        Snacks.toggle.diagnostics():map("<leader>ud")
        Snacks.toggle.line_number():map("<leader>ul")
        Snacks.toggle
            .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
            :map("<leader>uc")
        Snacks.toggle.treesitter():map("<leader>uT")
        Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        Snacks.toggle.inlay_hints():map("<leader>uh")
        Snacks.toggle.indent():map("<leader>ug")
        Snacks.toggle.dim():map("<leader>uD")
      end,
    })
  end,
}
