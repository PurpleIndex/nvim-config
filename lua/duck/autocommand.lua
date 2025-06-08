vim.api.nvim_create_autocmd({ 'WinResized', 'VimEnter', 'WinEnter' }, {
	callback = function ()
		vim.wo.scrolloff = math.floor((vim.api.nvim_win_get_height(0) - 7) / 2)
	end
})
