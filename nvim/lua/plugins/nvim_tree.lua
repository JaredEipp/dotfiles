--make sure icons load
local set, devicons = pcall(require, "nvim-web-devicons")
if not set then
    print("nvim-web-devicons failed to load")
    return
end

devicons.setup()

local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    print("nvim-tree failed to load")
    return
end

--recommeded setting from README
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
nvimtree.setup({
    renderer = {
        icons = {
            show = {
                file = false,
                folder = false,
            },
            glyphs = {
                folder = {
                    arrow_closed = "-",
                    arrow_open = "|",
                },
            },
        },
    },
})
