return {
  "anuvyklack/windows.nvim",
  dependencies = {
    "anuvyklack/middleclass",
    "anuvyklack/animation.nvim",
  },
  lazy = false,
  config = function()
    vim.o.winwidth = 10
    vim.o.winminwidth = 10
    vim.o.equalalways = false
    require("windows").setup({
      autowidth = {
        enable = true,
        winwidth = 5,
        filetype = {
          help = 15,
        },
      },
      ignore = {
        buftype = { "quickfix" },
        filetype = { "NeoTree", "Tree", "NvimTree", "neo-tree", "Neo-Tree", "undotree", "gundo", "Oil", "oil" },
      },
      animation = {
        enable = true,
        duration = 300,
        fps = 175,
        easing = "in_out_sine",
      },
    })
  end,
}
