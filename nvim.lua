-- link to ~/.config/nvim/lua

vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },

  { src = "https://github.com/ewilazarus/preto" },
  { src = "https://github.com/hiphish/rainbow-delimiters.nvim" }
})

require("nvim-treesitter.configs").setup({})
require("mason").setup()
require("mason-lspconfig").setup()
vim.lsp.config("lua_ls", { settings = { Lua = { workspace = { library = vim.api.nvim_get_runtime_file("", true) } } } } )

vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.cmd("colorscheme preto")
require("rainbow-delimiters.setup").setup({})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

vim.opt.wrap = false

