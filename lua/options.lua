require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.clipboard = "unnamedplus"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
