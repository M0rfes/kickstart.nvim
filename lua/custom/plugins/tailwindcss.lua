-- https://github.com/luckasRanarison/tailwind-tools.nvim
return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim',
    'neovim/nvim-lspconfig',
  },
  opts = {
    server = {
      override = false, -- keep kickstart mason/lspconfig setup
    },
    document_color = {
      enabled = true,
      kind = 'inline',
    },
  },
}
