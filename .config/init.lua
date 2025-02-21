-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- [[Vim settings options]]
require 'options'

-- [[Keymaps]]
require 'keymaps'

-- [[Install Lazy vim plugin manager]]
require 'lazy-bootstrap'

-- [[Install Lazy vim plugins]]
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
