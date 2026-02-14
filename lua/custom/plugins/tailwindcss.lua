return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    server = {
      override = false, -- important: do NOT touch LSP
    },
    document_color = { enabled = true, kind = 'inline' },
  },
}
