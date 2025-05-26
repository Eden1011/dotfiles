ONEDARK = {
  "navarasu/onedark.nvim",
  opts = {
    style = "deep",
    transparent = true,
    term_colors = true,
    lualine = {
      transparent = true,
    },
  },
}

BUFFERLINE = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
}

return {
  { ONEDARK },
  { BUFFERLINE },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "onedark",
  } },
}
