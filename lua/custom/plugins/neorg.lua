return {
  {
    'nvim-neorg/neorg',
    build = ':Neorg sync-parsers',
    lazy = false,
    version = '*',
    opts = {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
      },
    },
  },
}
