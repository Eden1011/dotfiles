local map = a.keymap.set
local function cmd(command)
  return table.concat({ "<Cmd>", command, "<CR>" })
end

map("n", "<C-e>", cmd("Neotree")) -- open Neotree
map({ "n", "v" }, "<C-Down>", "}", { desc = "Paragraph down" })
map({ "n", "v" }, "<C-Up>", "{", { desc = "Paragraph up" })

map("n", "<C-w>z", cmd("WindowsMaximize"), { desc = "Maxmizie current window in all directions (Focus)" })
map("n", "<C-w>_", cmd("WindowsMaximizeVertically"), { desc = "Maximize current window vertically" })
map("n", "<C-w>|", cmd("WindowsMaximizeHorizontally"), { desc = "Maximize current window horizontlly" })
map("n", "<C-w>=", cmd("WindowsEqualize"), { desc = "Equalize size of all windows" })

HEIGHT_RESIZE_INTERVAL = 3
WIDTH_RESIZE_INTERVAL = 5

map(
  "n",
  "<C-w>+",
  cmd("resize +" .. HEIGHT_RESIZE_INTERVAL),
  { desc = "Increase window height by " .. HEIGHT_RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w>-",
  cmd("resize -" .. HEIGHT_RESIZE_INTERVAL),
  { desc = "Decrease window height by " .. HEIGHT_RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w>>",
  cmd("vertical resize +" .. WIDTH_RESIZE_INTERVAL),
  { desc = "Increase window width by " .. WIDTH_RESIZE_INTERVAL, silent = true }
)
map(
  "n",
  "<C-w><",
  cmd("vertical resize -" .. WIDTH_RESIZE_INTERVAL),
  { desc = "Decrease window width by " .. WIDTH_RESIZE_INTERVAL, silent = true }
)
