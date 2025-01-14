--return {
--  "tiagovla/tokyodark.nvim",
--  opts = {
--    transparent_background = true,
--    terminal_colors = true,
--  },
--  config = function(_, opts)
--    require("tokyodark").setup(opts) -- calling setup is optional
--    vim.cmd([[colorscheme tokyodark]])
--  end,
--}
return {
  "navarasu/onedark.nvim",
  opts = {
    style = "deep",
    transparent = true,
    term_colors = true,
    lualine = {
      transparent = true,
    },
  },
  config = function(_, opts)
    require("onedark").setup(opts) -- calling setup is optional
    vim.cmd([[colorscheme onedark]])
  end,
}
