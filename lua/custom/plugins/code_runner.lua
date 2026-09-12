return {
  'CRAG666/code_runner.nvim',
  cmd = { 'RunCode', 'RunFile', 'RunProject', 'RunClose', 'CRFiletype', 'CRProjects' },
  keys = {
    { '<leader>r', '<cmd>RunCode<cr>', desc = '[R]un Code (Auto-compile & Run)' },
    { '<leader>rf', '<cmd>RunFile<cr>', desc = '[R]un [F]ile' },
    { '<leader>rp', '<cmd>RunProject<cr>', desc = '[R]un [P]roject' },
    { '<leader>rc', '<cmd>RunClose<cr>', desc = '[R]un [C]lose Window' },
  },
  opts = {
    mode = 'float',
    focus = true,
    startinsert = true,
    float = {
      border = 'rounded',
      height = 0.8,
      width = 0.8,
      x = 0.5,
      y = 0.5,
      border_hl = 'FloatBorder',
      float_hl = 'Normal',
      blend = 0,
    },
    filetype = {
      c = 'cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
      cpp = 'cd $dir && g++ -O2 $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt',
      rust = 'cd $dir && rustc $fileName && ./$fileNameWithoutExt',
      python = 'python3 -u',
      sh = 'bash',
      go = 'go run',
    },
  },
}
