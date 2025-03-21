vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("filetype plugin indent on")
vim.api.nvim_set_keymap("n", "gg", "gg=G", { noremap = true, silent = true })

vim.g.mapleader = " "

-- Setup Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Ensure Lazy.nvim is properly loading `lua/plugins/`
require("lazy").setup({ import = "plugins" })

-- lua/configs/
require("config.keymaps")
require("config.neotree")


---------------- Config --------------------

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.relativenumber = true




--------------------- Keymaps -------------- 

-- Standard
vim.keymap.set("n", "H", "^", { noremap = true, silent = true }) -- Start of line (non-blank)
vim.keymap.set("n", "L", "$", { noremap = true, silent = true }) -- End of line
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true }) -- Scroll down, keep cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true }) -- Scroll up, keep cursor centered
vim.keymap.set("n", "n", "nzzzv", { noremap = true }) -- Keep search results centered
vim.keymap.set("n", "N", "Nzzzv", { noremap = true }) -- Keep search results centered

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true }) -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true }) -- Previous buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true }) -- Delete buffer
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true }) -- New tab
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true }) -- Close tab

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true }) -- Vertical split
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true }) -- Horizontal split
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true }) -- Move left
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true }) -- Move right
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true }) -- Move down
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true }) -- Move up
vim.keymap.set("n", "<leader>=", "<C-w>=", { noremap = true }) -- Balance window sizes

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true }) -- Save
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true }) -- Quit
vim.keymap.set("n", "<leader>x", ":x<CR>", { noremap = true }) -- Save & exit
vim.keymap.set("n", "<leader>Q", ":qa!<CR>", { noremap = true }) -- Force quit all

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true }) -- Copy to system clipboard
vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = true }) -- Copy line to system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true }) -- Paste from system clipboard
vim.keymap.set("n", "<leader>P", '"+P', { noremap = true }) -- Paste before cursor

vim.keymap.set("n", "<leader>o", "o<Esc>", { noremap = true }) -- Insert new line below without entering insert mode
vim.keymap.set("n", "<leader>O", "O<Esc>", { noremap = true }) -- Insert new line above without entering insert mode
vim.keymap.set("n", "<leader>cc", ":noh<CR>", { noremap = true, silent = true }) -- Clear search highlights
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { noremap = true }) -- Change directory to current file's folder

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true }) -- Escape terminal mode
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true }) -- Move left in terminal
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true }) -- Move right in terminal
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true }) -- Move down in terminal
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true }) -- Move up in terminal

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true }) -- Require double Escape to exit terminal mode
vim.keymap.set("n", "<leader>t-", ":split | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in horizontal split
vim.keymap.set("n", "<leader>t|", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("n", "<leader>t\\", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("n", "<leader>tt", ":split | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in split
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true }) -- Exit terminal mode with ESC
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true }) -- Quit terminal with Ctrl+Q

vim.keymap.set("n", "<leader>D", '"_d', { noremap = true, silent = true }) -- Delete with motions without yanking

vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { noremap = true, silent = true }) -- Change working dir to current file
vim.keymap.set("i", "<C-CR>", "\\n", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "\\n", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>du", ":!dos2unix %<CR>", { silent = true, desc = "Convert file to Unix format" })

-- Move by logical lines (wrapped text)
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })
vim.keymap.set("x", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("x", "k", "gk", { noremap = true, silent = true })
vim.keymap.set("i", "<Down>", "<C-o>gj", { noremap = true, silent = true })
vim.keymap.set("i", "<Up>", "<C-o>gk", { noremap = true, silent = true })

-- Keys to other keys
vim.cmd("command! Q q") -- map Q to q

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true }) -- Toggle Neotree
vim.keymap.set("n", "<C-e>", ":Neotree focus<CR>", { noremap = true, silent = true }) -- Focus Neotree
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true }) -- Move right (to file)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true }) -- Move left (to Neotree)





-- Bufferline (tabs)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })   -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true }) -- Previous buffer
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })   -- Pick a buffer
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { noremap = true, silent = true })         -- Close buffer
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true }) -- Close all except current
vim.keymap.set("n", "<leader>bl", ":BufferLineMoveNext<CR>", { noremap = true, silent = true }) -- Move buffer right
vim.keymap.set("n", "<leader>bh", ":BufferLineMovePrev<CR>", { noremap = true, silent = true }) -- Move buffer left


vim.keymap.set("n", "<leader>nr", ":Neotree refresh<CR>", { silent = true })
-- Close NeoTree if it is preventing vim from closing
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    if #vim.api.nvim_list_wins() == 2 then  -- Assuming one is Neotree
      vim.cmd("Neotree close")
    end
  end,
})



-- Treesitter Configuration (after Lazy.nvim has loaded plugins)
vim.defer_fn(function()
  local ok, configs = pcall(require, "nvim-treesitter.configs")
  if ok then
    configs.setup {
      ensure_installed = {
        "lua", "vim", "vimdoc", "bash", "fish",
        "json", "yaml", "toml", "ini",
        "javascript", "typescript", "tsx",
        "html", "css", "scss", "jsonc",
        "python", "c", "cpp", "java", "go", "rust",
        "kotlin", "scala", "zig", "nim",
        "dockerfile", "make", "cmake", "ninja",
        "terraform", "hcl",
        "gitcommit", "gitignore", "gitattributes",
        "markdown", "markdown_inline",
        "xml", "csv", "tsv",
        "mermaid",
        "regex", "query", "comment"
      },
      highlight = { enable = true },
      indent = { enable = true }
    }
  end
end, 0)

-- Telescope Keymaps
vim.defer_fn(function()
  local ok, builtin = pcall(require, "telescope.builtin")
  if ok then
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
end, 0)

-- Colorscheme
vim.cmd.colorscheme "catppuccin"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("filetype plugin indent on")
vim.api.nvim_set_keymap("n", "gg", "gg=G", { noremap = true, silent = true })

vim.g.mapleader = " "

-- Setup Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Ensure Lazy.nvim is properly loading `lua/plugins/`
require("lazy").setup({ import = "plugins" })

---------------- Config --------------------

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.relativenumber = true




--------------------- Keymaps -------------- 

-- Standard
vim.keymap.set("n", "H", "^", { noremap = true, silent = true }) -- Start of line (non-blank)
vim.keymap.set("n", "L", "$", { noremap = true, silent = true }) -- End of line
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true }) -- Scroll down, keep cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true }) -- Scroll up, keep cursor centered
vim.keymap.set("n", "n", "nzzzv", { noremap = true }) -- Keep search results centered
vim.keymap.set("n", "N", "Nzzzv", { noremap = true }) -- Keep search results centered

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true }) -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true }) -- Previous buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true }) -- Delete buffer
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true }) -- New tab
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true }) -- Close tab

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true }) -- Vertical split
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true }) -- Horizontal split
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true }) -- Move left
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true }) -- Move right
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true }) -- Move down
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true }) -- Move up
vim.keymap.set("n", "<leader>=", "<C-w>=", { noremap = true }) -- Balance window sizes

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true }) -- Save
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true }) -- Quit
vim.keymap.set("n", "<leader>x", ":x<CR>", { noremap = true }) -- Save & exit
vim.keymap.set("n", "<leader>Q", ":qa!<CR>", { noremap = true }) -- Force quit all

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true }) -- Copy to system clipboard
vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = true }) -- Copy line to system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true }) -- Paste from system clipboard
vim.keymap.set("n", "<leader>P", '"+P', { noremap = true }) -- Paste before cursor

vim.keymap.set("n", "<leader>o", "o<Esc>", { noremap = true }) -- Insert new line below without entering insert mode
vim.keymap.set("n", "<leader>O", "O<Esc>", { noremap = true }) -- Insert new line above without entering insert mode
vim.keymap.set("n", "<leader>cc", ":noh<CR>", { noremap = true, silent = true }) -- Clear search highlights
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { noremap = true }) -- Change directory to current file's folder

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true }) -- Escape terminal mode
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true }) -- Move left in terminal
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true }) -- Move right in terminal
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true }) -- Move down in terminal
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true }) -- Move up in terminal

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true }) -- Require double Escape to exit terminal mode
vim.keymap.set("n", "<leader>t-", ":split | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in horizontal split
vim.keymap.set("n", "<leader>t|", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("n", "<leader>t\\", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("n", "<leader>tt", ":split | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in split
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true }) -- Open terminal in vertical split
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true }) -- Exit terminal mode with ESC
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true }) -- Quit terminal with Ctrl+Q

vim.keymap.set("n", "<leader>D", '"_d', { noremap = true, silent = true }) -- Delete with motions without yanking

vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { noremap = true, silent = true }) -- Change working dir to current file
vim.keymap.set("i", "<C-CR>", "\\n", { noremap = true, silent = true })
vim.keymap.set("i", "<C-j>", "\\n", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>d2u", ":!dos2unix %<CR>", { silent = true, desc = "Convert file to Unix format" })

-- Move by logical lines (wrapped text)
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })
vim.keymap.set("x", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("x", "k", "gk", { noremap = true, silent = true })
vim.keymap.set("i", "<Down>", "<C-o>gj", { noremap = true, silent = true })
vim.keymap.set("i", "<Up>", "<C-o>gk", { noremap = true, silent = true })

-- Keys to other keys
vim.cmd("command! Q q") -- map Q to q

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true }) -- Toggle Neotree
vim.keymap.set("n", "<C-e>", ":Neotree focus<CR>", { noremap = true, silent = true }) -- Focus Neotree
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true }) -- Move right (to file)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true }) -- Move left (to Neotree)





-- Bufferline (tabs)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })   -- Next buffer
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true }) -- Previous buffer
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true, silent = true })   -- Pick a buffer
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { noremap = true, silent = true })         -- Close buffer
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true }) -- Close all except current
vim.keymap.set("n", "<leader>bl", ":BufferLineMoveNext<CR>", { noremap = true, silent = true }) -- Move buffer right
vim.keymap.set("n", "<leader>bh", ":BufferLineMovePrev<CR>", { noremap = true, silent = true }) -- Move buffer left


vim.keymap.set("n", "<leader>nr", ":Neotree refresh<CR>", { silent = true })
-- Close NeoTree if it is preventing vim from closing
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    if #vim.api.nvim_list_wins() == 2 then  -- Assuming one is Neotree
      vim.cmd("Neotree close")
    end
  end,
})



-- Treesitter Configuration (after Lazy.nvim has loaded plugins)
vim.defer_fn(function()
  local ok, configs = pcall(require, "nvim-treesitter.configs")
  if ok then
    configs.setup {
      ensure_installed = {
        "lua", "vim", "vimdoc", "bash", "fish",
        "json", "yaml", "toml", "ini",
        "javascript", "typescript", "tsx",
        "html", "css", "scss", "jsonc",
        "python", "c", "cpp", "java", "go", "rust",
        "kotlin", "scala", "zig", "nim",
        "dockerfile", "make", "cmake", "ninja",
        "terraform", "hcl",
        "gitcommit", "gitignore", "gitattributes",
        "markdown", "markdown_inline",
        "xml", "csv", "tsv",
        "mermaid",
        "regex", "query", "comment"
      },
      highlight = { enable = true },
      indent = { enable = true }
    }
  end
end, 0)

-- Telescope Keymaps
vim.defer_fn(function()
  local ok, builtin = pcall(require, "telescope.builtin")
  if ok then
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  end
end, 0)

-- Colorscheme
vim.cmd.colorscheme "catppuccin"


----- Run on Startup -----

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Delay slightly to ensure all UI elements load first
    vim.defer_fn(function()
      vim.cmd("silent! doautocmd User LazyVimStarted")  -- Ensure LazyVim plugins are ready
      vim.cmd("normal! \\lt")  -- Simulate `<leader>lt`
    end, 100)  -- 100ms delay
  end,
})

