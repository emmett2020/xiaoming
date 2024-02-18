-----------------------------------------------
---                DailyVim's option        ---
-----------------------------------------------
--- https://neovim.io/doc/user/options.html

vim.g.mapleader = " " -- Leader key
vim.g.maplocalleader = "\\" -- ?

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Disable some providers which we won't use.
-- Otherwise you'll find warnning/error messages in :checkhealth
-- Providers: https://neovim.io/doc/user/provider.html
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.netrw_fastbrowse = 0 -- Close netrw after opening the file

-- detail options
local opt = vim.opt
opt.autowrite = true -- Enable auto write
-- opt.clipboard = "unnamed" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 4 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap
opt.splitkeep = "screen" -- ?
opt.shortmess:append({ C = true }) -- ?
opt.shell = "/usr/bin/bash" -- Set default shell. Usually needed by :term command.

-- Allow specified keys that move the cursor left/right to move to the
-- previous/next line when the cursor is on the first/last character in the
-- line. There have some limits when using this options. Plz read this option
-- linkage.
opt.whichwrap = "h,l"
