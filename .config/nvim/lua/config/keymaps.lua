local map = vim.keymap.set
local function cmd(command)
  return table.concat({ "<Cmd>", command, "<CR>" })
end

map("n", "<C-e>", cmd("Neotree")) -- open Neotree
map({ "n", "v" }, "<C-Down>", "}", { desc = "Paragraph down" })
map({ "n", "v" }, "<C-Up>", "{", { desc = "Paragraph up" })

map("n", "<C-w>a", cmd("WindowsMaximize"), { desc = "Maxmizie current window in all directions (Focus)" })
map("n", "<C-w>v", cmd("WindowsMaximizeVertically"), { desc = "Maximize current window vertically" })
map("n", "<C-w>h", cmd("WindowsMaximizeHorizontally"), { desc = "Maximize current window horizontlly" })
map("n", "<C-w>e", cmd("WindowsEqualize"), { desc = "Equalize size of all windows" })

-- Telescope (../plugins/plugins.lua)
-- Normal mode: "ff" ('f' in Neo-tree) -> Telescope find_files
-- Normal mode: "fg" ('g' in Neo-tree) -> Telescope live_grep

RESIZE_INTERVAL = 3
map(
  "n",
  "<C-w>+",
  cmd("resize +" .. RESIZE_INTERVAL),
  { desc = "Increase window height by " .. RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w>-",
  cmd("resize -" .. RESIZE_INTERVAL),
  { desc = "Decrease window height by " .. RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w>]",
  cmd("vertical resize +" .. RESIZE_INTERVAL),
  { desc = "Increase window width by " .. RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w>[",
  cmd("vertical resize -" .. RESIZE_INTERVAL),
  { desc = "Decrease window width by " .. RESIZE_INTERVAL, silent = true }
)
