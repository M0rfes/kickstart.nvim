return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require 'nvim-treesitter'
    ts.setup()

    local ensure_installed = {
      'bash',
      'c',
      'css',
      'diff',
      'go',
      'html',
      'javascript',
      'jsdoc',
      'json',
      'json5',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'regex',
      'rust',
      'toml',
      'tsx',
      'typescript',
      'vim',
      'vimdoc',
      'yaml',
    }

    local installed = require('nvim-treesitter.config').get_installed()
    local to_install = vim.tbl_filter(function(p)
      return not vim.tbl_contains(installed, p)
    end, ensure_installed)
    if #to_install > 0 then
      ts.install(to_install)
    end

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(event)
        local lang = vim.treesitter.language.get_lang(event.match)
        if not lang or not vim.tbl_contains(ts.get_installed 'parsers', lang) then
          return
        end

        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}

