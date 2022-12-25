require "catppuccin".setup({
	transparent_background = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	}
})

function F(c)
	c = c or "catppuccin"
	vim.cmd.colorscheme(c)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

F()
