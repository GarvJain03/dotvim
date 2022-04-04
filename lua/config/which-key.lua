local wk = require('which-key')

local mappings = {
  q = {":q<cr>", "Quit"},
  w = {":w<cr>", "Save"},
  u = {":u<cr>", "Undo"},
  x = {":bdelete<cr>", "Close"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"},
  r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
}
local opts = {prefix = "<leader>"}

wk.register(mappings, opts)
