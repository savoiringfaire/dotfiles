return require("lazy").setup({
	-- Core plugins
	"mbbill/undotree",
	"dhruvasagar/vim-table-mode",
	"tpope/vim-fugitive",
  
	-- Treesitter
	{
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	},
  
	-- Theme
	{
	  "rose-pine/neovim",
	  name = "rose-pine",
	  priority = 1000, -- Load the colorscheme early
	},
  
	-- File explorer
	{
	  "nvim-tree/nvim-tree.lua",
	  dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional
	  },
	},
  
	-- Telescope (fuzzy finder)
	{
	  "nvim-telescope/telescope.nvim",
	  branch = "0.1.x",
	  dependencies = { "nvim-lua/plenary.nvim" }
	},
  
	-- Diagnostics, errors, warnings
	{
	  "folke/trouble.nvim",
	  dependencies = "nvim-tree/nvim-web-devicons",
	  opts = {
		-- Your configuration comes here
		-- Or leave it empty to use the default settings
	  },
	},
  
	-- LSP configuration
	{
	  "VonHeikemen/lsp-zero.nvim",
	  branch = "v2.x",
	  dependencies = {
		-- LSP Support
		{"neovim/nvim-lspconfig"},
		{
		  "williamboman/mason.nvim",
		  build = function()
			pcall(vim.cmd, "MasonUpdate")
		  end,
		},
		{"williamboman/mason-lspconfig.nvim"},
  
		-- Autocompletion
		{"hrsh7th/nvim-cmp"},
		{"hrsh7th/cmp-nvim-lsp"},
		{"L3MON4D3/LuaSnip"},
	  }
	},
  }, {
	-- Lazy.nvim configuration options
	checker = {
	  enabled = true,   -- Auto-check for plugin updates
	  frequency = 86400 -- Check once a day (in seconds)
	},
	change_detection = {
	  enabled = true,   -- Auto-reload configuration
	  notify = true,    -- Get notification when changes are detected
	},
	performance = {
	  rtp = {
		disabled_plugins = {
		  "gzip",
		  "matchit",
		  "matchparen",
		  "netrwPlugin",
		  "tarPlugin",
		  "tohtml",
		  "tutor",
		  "zipPlugin",
		},
	  },
	},
  })
  