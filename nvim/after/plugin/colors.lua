function ColorMyPencils(color)
	color = color or "dracula"
	vim.cmd.colorscheme(color) -- set the colorscheme(by default dracula)

	-- Uncomment the below two lines to remove the background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = None })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = None })
end

ColorMyPencils()
