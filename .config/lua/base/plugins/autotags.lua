return {
  -- Auto Completing tags for HTML XML, markup languages in general
  "windwp/nvim-ts-autotag",
   dependencies = "nvim-treesitter/nvim-treesitter",
  config = function ()
    require('nvim-ts-autotag').setup({})
  end,
  lazy = true,
  event = "VeryLazy"
}
