vim.keymap.set({"n","v","x","o"}, "j", "h")
vim.keymap.set({"n","v","x","o"}, "k", "j")
vim.keymap.set({"n","v","x","o"}, "l", "k")
vim.keymap.set({"n","v","x","o"}, ";", "l")
vim.keymap.set({"n","v","x","o"}, "h", ";")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "go", ":Oil<CR>")
-- telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope buffers' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'telescope help tags' })
vim.keymap.set('n', '<leader>fv', builtin.vim_options, { desc = 'telescope vim options'})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'telescope tree-sitter references'})
vim.keymap.set('n', '<leader>cb', builtin.current_buffer_fuzzy_find, { desc = 'telescope current buffer fuzzy find'})
vim.keymap.set('n', '<leader>fk', builtin.keymaps)
vim.keymap.set('n', '<leader>fd', function()
  require('telescope.builtin').find_files({
    prompt_title = 'Find Directories (including hidden)',
    find_command = {'find', '.', '-type', 'd'},
    hidden = true
  })
end, { desc = 'Find directories' })




-- telescope keymaps{
  
