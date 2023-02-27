--install packer if not installed
local ensure_packer = function()
  	local fn = vim.fn
  	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  	if fn.empty(fn.glob(install_path)) > 0 then
    	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    	vim.cmd([[packadd packer.nvim]])
    	return true
  	end
  	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
	augroup packer_user_config
		autocmd!
    	autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  	augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)

	--packer
	use("wbthomason/packer.nvim")

    --lua functions for some plugins
    use("nvim-lua/plenary.nvim")

	-- sonph/onehalf is the other theme once I want to mess with packer
    	--use{ "sonph/onehalf", rtp = "vim" }
	--catpuccin theme
	use { 'catppuccin/nvim', as = 'catppuccin' }

    -- file explorer
    --use("nvim-tree/nvim-tree.lua")
    --use below once a font with support for icons is used
    use{
        "nvim-tree/nvim-tree.lua",
        requires = { 'nvim-tree/nvim-web-devicons', },
    }

    -- statusline
    use("nvim-lualine/lualine.nvim")

    -- fuzzy finding
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use{ "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim", },
    }

    --more syntax highlighting
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate"})
    --this gives us an AST for playing
    --use("nvim-treesitter/playground")

    -- manage and install lsp's
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- config lsp's
    use("neovim/nvim-lspconfig")

	if packer_bootstrap then
		require("packer").snyc()
	end
end)
