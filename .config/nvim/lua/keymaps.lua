-- [[ Basic Keymaps ]]

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>e', '<cmd>Explore<CR>', { desc = 'Open file explorer' })
vim.keymap.set({ 'n', 'i' }, '<C-s>', '<cmd>w!<CR>')

vim.keymap.set('n', '<leader>vv', '<cmd>split<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>vs', '<cmd>vs<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>x', '<cmd>q<CR>', { desc = 'Close vim' })

-- Undo
vim.keymap.set({ 'n', 'i' }, '<C-z>', '<cmd>u<CR>')

-- Moves highlighted blocks of code similar to vscode
vim.keymap.set('v', '<S-Up>', ":m '< -2<CR>gv=gv")
vim.keymap.set('v', '<S-Down>', ":m '>+2<CR>gv=gv")

vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<lader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<S-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<S-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<S-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<S-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
