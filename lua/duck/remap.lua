-- files
do 
  -- oil
  vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", {desc = "Open parent directory"})
end

-- window resizing and focus
do
  -- resize buffers
  vim.keymap.set("n", "<leader><leader>h", "3<C-W><")
  vim.keymap.set("n", "<leader><leader>j", "3<C-W>+")
  vim.keymap.set("n", "<leader><leader>k", "3<C-W>-")
  vim.keymap.set("n", "<leader><leader>l", "3<C-W>>")
  -- move between buffers
  vim.keymap.set("n", "<leader>h", "<C-W>h")
  vim.keymap.set("n", "<leader>j", "<C-W>j")
  vim.keymap.set("n", "<leader>k", "<C-W>k")
  vim.keymap.set("n", "<leader>l", "<C-W>l")
end

-- shortcuts to commands
do 
  -- remove highlighting
  vim.keymap.set("n", "<leader>s", "<CMD>nohls<CR>")
  -- summon the terminal
  vim.keymap.set("n", "<leader>ct", "<CMD>terminal<CR>i")
  -- summon lazygit
  vim.keymap.set("n", "<leader>g", "<CMD>terminal<CR>ilazygit<CR>")
  -- reload config
  vim.keymap.set("n", "<leader><leader>s", "<CMD>so %<CR>")
end

-- tabs
do
  local opts = {noremap = true, silent = true}
  -- Move to previous/next tab
  vim.api.nvim_set_keymap('n', '<leader>a', '<CMD>BufferPrevious<CR>', opts)
  vim.api.nvim_set_keymap('n', '<leader>r', '<CMD>BufferNext<CR>', opts)
  -- Move buffers
  vim.api.nvim_set_keymap('n', '<leader><leader>a', '<CMD>BufferMovePrevious<CR>', opts)
  vim.api.nvim_set_keymap('n', '<leader><leader>r', '<CMD>BufferMoveNext<CR>', opts)
  -- Close buffer
  vim.api.nvim_set_keymap('n', '<leader>d', '<CMD>BufferClose<CR>', opts)
end
