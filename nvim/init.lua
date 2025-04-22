-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Poczekaj na załadowanie lspconfig
local lspconfig = require("lspconfig")

-- Konfiguracja Deno LSP
lspconfig.denols.setup({
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
  init_options = {
    enable = true,
    unstable = true,
    importMap = "./import_map.json",
    codeLens = {
      implementations = true,
      references = true,
    },
    suggest = {
      imports = {
        hosts = {
          ["https://deno.land"] = true,
          ["https://esm.sh"] = true,
        },
      },
    },
  },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})

-- Konfiguracja TypeScript LSP aby uniknąć konfliktów
lspconfig.ts_ls.setup({
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
})

-- Podświetlanie składni w blokach kodu w markdown
vim.g.markdown_fenced_languages = {
  "ts=typescript",
  "tsx=typescriptreact",
}
