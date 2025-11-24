local keys = {
  {
    '<leader>a',
    function()
      require('harpoon'):list():append()
    end,
    desc = 'Add file to Harpoon',
  },
  {
    '<leader>h',
    function()
      local harpoon = require 'harpoon'
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,
    desc = 'Harpoon quick menu',
  },
  {
    '<leader>0',
    function()
      require('harpoon'):list():select(10)
    end,
    desc = 'Go to Harpoon file 10',
  },
  -- Add more keybindings if needed
}
for i = 1, 9 do
  table.insert(keys, {
    '<leader>' .. i,
    function()
      require('harpoon'):list():select(i)
    end,
    desc = 'Go to Harpoon file ' .. i,
  })
end
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- Use the harpoon2 branch
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon'):setup()
  end,
  keys = keys,
}
