return {
  "hedyhli/outline.nvim",
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>cs", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },

  event = "VeryLazy",
  dependencies = {
    'epheien/outline-treesitter-provider.nvim'
  },

  opts = {
    providers = {
      priority = { "lsp", "treesitter" },
    },
  },
}
