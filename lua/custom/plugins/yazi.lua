return {
  'mikavilpas/yazi.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>-',
      function()
        require('yazi').yazi()
      end,
      desc = 'Open Yazi (floating)',
    },
  },
  opts = {
    open_for_directories = true, -- optional: use yazi for dirs instead of netrw
  },
}
