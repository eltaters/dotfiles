-- Always enable inlay hints by default
---@diagnostic disable: undefined-global
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
  end,
})

-- Set tabs to 4 spaces in C/C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h" },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

-- Treesitter highlights
vim.api.nvim_create_autocmd('FileType', {
  pattern = { "python", "cpp", "latex", "tex" },
  callback = function() vim.treesitter.start() end
})
