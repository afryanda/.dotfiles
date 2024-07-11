-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto build suckless tool
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "config.def.h",
--   command = "!sudo cp config.def.h config.h && sudo make install",
-- })
