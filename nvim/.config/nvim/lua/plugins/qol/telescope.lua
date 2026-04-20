return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local actions = require("telescope.actions")
    local multigrep = require("config.multigrep")

    require("telescope").setup {
      defaults = {
        mappings = {
          i = { ["<esc>"] = actions.close, ["<C-u>"] = false },
          n = { ["q"] = actions.close },
        },
      }
    }
    require("telescope").load_extension('fzf')
    vim.keymap.set("n", "<leader>fs", multigrep.live_multigrep, {
      desc = "Grep multi",
    })
  end,
  keys = {

    -- Built-in finder
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files() end,
      desc = "Telescope find files",
    },
    {
      "<leader>fg",
      function() require("telescope.builtin").live_grep() end,
      desc = "Telescope live grep",
    },
    {
      "<leader>fb",
      function() require("telescope.builtin").buffers() end,
      desc = "Telescope buffers",
    },
    {
      "<leader>fh",
      function() require("telescope.builtin").help_tags() end,
      desc = "Telescope help tags",
    },
    {
      "<leader>fc",
      function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end,
      desc = "Find Config File",
    },
    {
      "<leader>fr",
      function() require("telescope.builtin").oldfiles() end,
      desc = "Find Recent Files",
    },

    -- Snacks-like finder mappings
    {
      "<leader>:",
      function() require("telescope.builtin").command_history() end,
      desc = "Command History",
    },
    {
      "<leader><space>",
      function() require("telescope.builtin").find_files() end,
      desc = "Telescope find files",
    },
    {
      "<leader>/",
      function() require("telescope.builtin").live_grep() end,
      desc = "Telescope live grep",
    },
    {
      "<leader>,",
      function() require("telescope.builtin").buffers() end,
      desc = "Buffers",
    },

    -- Git integration
    {
      "<leader>gb",
      function() require("telescope.builtin").git_branches() end,
      desc = "Git Branches",
    },
    {
      "<leader>gc",
      function() require("telescope.builtin").git_commits() end,
      desc = "Git Commits",
    },
    {
      "<leader>gs",
      function() require("telescope.builtin").git_status() end,
      desc = "Git Status",
    },

    -- Search (grep)
    {
      "<leader>sl",
      function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      desc = "Grep buffer lines",
    },
    {
      "<leader>sb",
      function() require("telescope.builtin").live_grep({ grep_open_files = true }) end,
      desc = "Grep open buffers",
    },
    {
      "<leader>sr",
      function() require("telescope.builtin").registers() end,
      desc = "Grep registers",
    },
    {
      "<leader>sj",
      function() require("telescope.builtin").jumplist() end,
      desc = "Grep jumps",
    },
    {
      "<leader>sk",
      function() require("telescope.builtin").keymaps() end,
      desc = "Grep keymaps",
    },
    {
      "<leader>sm",
      function() require("telescope.builtin").marks() end,
      desc = "Grep marks",
    },
    {
      "<leader>sc",
      function() require("telescope.builtin").commands() end,
      desc = "Grep commands",
    },

    -- LSP
    {
      "gd",
      function() require("telescope.builtin").lsp_definitions() end,
      desc = "Go to definition",
    },
    {
      "gD",
      function() require("telescope.builtin").lsp_declarations() end,
      desc = "Go to declaration",
    },
    {
      "gI",
      function() require("telescope.builtin").lsp_implementations() end,
      desc = "Goto Implementation",
    },
    {
      "gr",
      function() require("telescope.builtin").lsp_references() end,
      nowait = true,
      desc = "Go to references",
    },
    {
      "gh",
      function() require("telescope.builtin").lsp_incoming_calls() end,
      desc = "Go to Incoming Calls",
    },
    {
      "gl",
      function() require("telescope.builtin").lsp_outgoing_calls() end,
      desc = "Go to outgoing Calls",
    },
    {
      "gy",
      function() require("telescope.builtin").lsp_type_definitions() end,
      desc = "Goto Type Definition",
    }
  }
}
