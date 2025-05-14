local opt = vim.opt

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#FFA500", bg = "NONE", italic = true })
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#EE4B2B", bg = "NONE", italic = true })
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#EE4B2B", bg = "NONE", italic = true })
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#EE4B2B", bg = "NONE", italic = true })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
	end,
})

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
opt.cursorline = false
opt.laststatus = 0

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

opt.mouse = ""
