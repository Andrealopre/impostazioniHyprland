return {
	{
		"nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects"
    },
		lazy = false,
		build = "TSUpdate",
		config = function()
			local config = require("nvim-treesitter.config")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = false },
			})
		end,
	},
}
