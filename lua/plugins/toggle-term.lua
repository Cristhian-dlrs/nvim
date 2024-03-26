return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-`>]],
			shade_terminals = false,
			shell = "zsh --login",
			size = 20,
		})
	end,
	keys = {
		{
			"<C-`>",
			function()
				local count = vim.v.count1
				require("toggleterm").toggle(count, 10, vim.loop.cwd(), "horizontal")
			end,
			desc = "ToggleTerm (horizontal)",
		},
	},
}
