-- [[ Configure and install plugins ]]
require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  require 'base/plugins/gitsigns',
  require 'base/plugins/which-key',
  require 'base/plugins/telescope',
  require 'base/plugins/lspconfig',
  require 'base/plugins/conform',
  require 'base/plugins/cmp',
  require 'base/plugins/gruvbox',
  require 'base/plugins/todo-comments',
  -- Collection of various small independent plugins/modules
  require 'base/plugins/mini',
  require 'base/plugins/treesitter',
  require 'base/plugins/debug',
  require 'base/plugins/indent_line',
  require 'base/plugins/lint',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
