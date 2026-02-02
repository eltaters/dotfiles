return {
  "saghen/blink.cmp",
  -- Make blink.cmp toogleable
  opts = function(_, opts)
    vim.b.completion = true

    Snacks.toggle({
      name = "Completion",
      get = function()
        return vim.b.completion
      end,
      set = function(state)
        vim.b.completion = state
      end,
    }):map("<leader>uk")

    opts.enabled = function()
      return vim.b.completion ~= false
    end
    return opts
  end,
}
