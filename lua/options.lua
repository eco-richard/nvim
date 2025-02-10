require "nvchad.options"

-- add yours here!

local o = vim.o
o.relativenumber = true
o.clipboard = "unnamedplus"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = '*',
  command = "normal! zz"
})
