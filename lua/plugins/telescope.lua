-- Lazy.nvim plugin spec for Telescope with custom mappings
return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = { 
	{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
	   
	{ "<C-p>", "<cmd>Telescope git_files<cd>", desc = "Find in Git" },
	   
	{ 
		"<leader>ps", 
		function() local builtin = require('telescope.builtin') builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Find by Grep", 
	},
	{
		"<leader>fp", 
		function() require("telescope.builtin").find_files(
			{ cwd = require("lazy.core.config").options.root }) end,
		desc = "Find Plugin File",
	},
    },
}

