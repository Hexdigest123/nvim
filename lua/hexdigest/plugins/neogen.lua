return {
	"danymat/neogen",
	config = true,
	keys = {
		{
			"<leader>nc",
			function()
				require("neogen").generate({
					type = "class",
				})
			end,
			desc = "Generate class annotation",
		},
		{
			"<leader>nf",
			function()
				require("neogen").generate({
					type = "func",
				})
			end,
			desc = "Generate function annotation",
		},
		{
			"<leader>nt",
			function()
				require("neogen").generate({
					type = "type",
				})
			end,
			desc = "Generate type annotation",
		},
	},
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
