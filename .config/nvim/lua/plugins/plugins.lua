TELESCOPE = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  lazy = false,
  keys = function()
    -- this removes all previous keybindings
    -- if you dont want that; do keys = {}
    return {
      { "<C-t>", "<cmd>Telescope find_files<cr>", desc = "find files in project" },
      { "<C-g>", "<cmd>Telescope live_grep<cr>", desc = "find words in project files" },
      { "ff", "<cmd>Telescope find_files<cr>" },
      { "fg", "<cmd>Telescope live_grep<cr>" },
    }
  end,
}

NEOTREE_DEFAULT_WIDTH = 25
NEOTREE = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = true,
  opts = {
    filesystem = {
      bind_to_cwd = true, -- binds nvim cwd to neotree cwd
      use_libuv_file_watcher = true, -- should automagically refresh tree on new files spawn
      follow_current_file = { enabled = true },
    },
    window = {
      width = NEOTREE_DEFAULT_WIDTH,
      mappings = {
        ["Z"] = "expand_all_nodes",
        ["f"] = {
          function()
            vim.cmd("Telescope find_files")
          end,
        },
        ["g"] = {
          function()
            vim.cmd("Telescope live_grep")
          end,
        },
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = false, -- will use any open or unused buffer
            title = "Neo-tree preview",
          },
        },
      },
    },
  },
}

WINDOW_RESIZE = {
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
        filetype = { "NeoTree", "Tree", "NvimTree", "neo-tree", "Neo-Tree", "undotree", "gundo" },
      },
      animation = {
        enable = true,
        duration = 300,
        fps = 144,
        easing = "in_out_sine",
      },
    })
  end,
}

return {
  { TELESCOPE },
  { NEOTREE },
  { WINDOW_RESIZE },
}
