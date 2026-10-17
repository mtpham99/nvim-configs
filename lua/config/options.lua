--
-- lua/config/options.lua
--

-- indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftround = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.inccommand = 'split'

-- timings
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- whitespace formatting
vim.opt.list = true
vim.opt.listchars = { tab = '» ', lead = '·', trail = '·', nbsp = '␣' }
vim.opt.breakindent = true
vim.opt.linebreak = true

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = 'screen'
vim.opt.equalalways = true

-- ui display
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.scrolloff = 5
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'

-- behavior
vim.opt.mouse = 'a'
vim.opt.virtualedit = 'block'
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.confirm = true

-- history/backups
vim.opt.undofile = true
vim.opt.swapfile = true
vim.opt.autoread = true

-- diagnostics
vim.diagnostic.config {
  virtual_text = { spacing = 2 },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = true,
  },
}
