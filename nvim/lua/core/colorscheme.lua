-- Set catpuccin theme
-- pcall catches errors if the plugin doesn't load
local ok, catppuccin = pcall(require, "catppuccin")
if not ok then 
    print("catpuccin not found")
    return
    end
vim.g.catppuccin_flavour = "frappe"
catppuccin.setup()
vim.cmd [[colorscheme catppuccin]]

--[[
local status, _ = pcall(vim.cmd.colorscheme, "catppuccin")
if not status then
    print("colorscheme not found")
    return
end
--]]
