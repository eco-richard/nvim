-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "clangd",
  "cmake",
  "rust_analyzer",
  "gopls",
  "ts_ls",
  "glsl_analyzer",
  "bashls",
  "svelte",
  "eslint",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.cmake.setup {
  filetypes = { "cmake", "CMakeLists.txt" },
}

lspconfig.glsl_analyzer.setup {
  filetypes = { "glsl", "vert", "frag" },
}

lspconfig.bashls.setup {
  filetypes = { "sh" },
}

lspconfig.svelte.setup {
  filetypes = { "svelte" },
}

lspconfig.ts_ls.setup {
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
