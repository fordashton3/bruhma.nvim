return {
	'ThePrimeagen/harpoon',
	branch = 'harpoon2',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup()
	end,
	keys = {
	  { "<leader>a", function() require("harpoon"):list():add() end, desc = "Harpoon File", },
	  { "<C-e>", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end,
	  desc = "Harpoon Quick Menu", }, 
	  { "<C-h>", function() require("harpoon"):list():select(1) end, desc = "Harpoon 1", }, 
	  { "<C-j>", function() require("harpoon"):list():select(2) end, desc = "Harpoon 2", }, 
	  { "<C-k>", function() require("harpoon"):list():select(3) end, desc = "Harpoon 3", }, 
	  { "<C-l>", function() require("harpoon"):list():select(4) end, desc = "Harpoon 4", }, 

	}
}
