return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Key mappings for Neo-tree
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal toggle float<CR>", {})

		-- Setup for Neo-tree with custom image preview mapping
		require("neo-tree").setup({
			filesystem = {
				window = {
					mappings = {
						["<leader>p"] = "image_wezterm", -- Keybinding to preview images
					},
				},
				commands = {
					-- Custom command to preview an image
					image_wezterm = function(state)
						local node = state.tree:get_node()
						if node.type == "file" then
							require("image_preview").PreviewImage(node.path)
						end
					end,
				},
			},
		})
	end,
}
