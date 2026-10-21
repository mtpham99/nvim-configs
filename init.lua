--
-- init.lua
--

-- leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- configs
require 'config.keymaps'
require 'config.options'
require 'config.autocmds'

-- plugin manager: lazy
require 'config.lazy'
