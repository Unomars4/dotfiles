return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = {}
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        python = { 'isort', 'black' },
        -- Conform can also run multiple formatters sequentially
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
      },
      formatters = {
        prettierd = {
          options = {
            -- Use a specific prettier parser for a filetype
            -- Otherwise, prettier will try to infer the parser from the file name
            ft_parsers = {
              javascript = 'babel',
              javascriptreact = 'babel',
              typescript = 'typescript',
              typescriptreact = 'typescript',
              vue = 'vue',
              css = 'css',
              --     scss = "scss",
              --     less = "less",
              html = 'html',
              json = 'json',
              jsonc = 'json',
              yaml = 'yaml',
              --     markdown = "markdown",
              --     ["markdown.mdx"] = "mdx",
              graphql = 'graphql',
              --     handlebars = "glimmer",
            },
            -- Use a specific prettier parser for a file extension
            ext_parsers = {
              -- qmd = "markdown",
            },
          },
        },
      },
    },
  },
}
