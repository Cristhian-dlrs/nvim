return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-t>]],
			shade_terminals = false,
			shell = "zsh --login",
			size = 20,
			start_in_insert = true,
		})
	end,
	keys = {
		{
			"<C-t>",
			function()
				local count = vim.v.count1
				require("toggleterm").toggle(count, 10, vim.loop.cwd(), "horizontal")
			end,
			desc = "ToggleTerm (horizontal)",
		},
	},
}
