-- Always enable inlay hints by default
-- Sort of lazy event, put them only when opening a file for an LSP
-- that supports it.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
  end,
})

-- Set tabs to 4 spaces in C/C++
-- Vimsleuth should take care of this, but just in case I'll take what I
-- was using from my previous config.
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
-- I literally cannot live without this, thank you folke
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { "python" },
  callback = function() vim.treesitter.start() end
})
