vim.cmd [[packadd packer.nvim]] return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "catppuccin/nvim", as = "catppuccin", config = function() vim.cmd('colorscheme catppuccin') end }

	use { 'nvim-treesitter/nvim-treesitter', as = 'nvim-treesitter', run = ':TSUpdate'}

	use { 'nvim-treesitter/playground' }

	use { 'theprimeagen/harpoon' }

	use { 'mbbill/undotree' }

	use { 'tpope/vim-fugitive' }

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use { 'wellle/context.vim' }

	-- use { 'SmiteshP/nvim-navic', requires = 'neovim/nvim-lspconfig' }
	use {
		"goolord/alpha-nvim",
		config = function ()
			local alpha = require'alpha'
			local dashboard = require'alpha.themes.dashboard'
			dashboard.section.header.val = {
				[[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ]],
				[[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
				[[      ⠈   ⠈⢿⣿⣟⠦⠄⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]],
				[[           ⣸⣿⣿⢧⠄⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
				[[   ⢀      ⢠⣿⣿⣿⠈⠄ ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
				[[   ⢠⣧⣶⣥⡤⢄⠄⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿   ]],
				[[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷⠄ ⠄⢊⣿⣿⡏  ⢸⣿⣿⡇⠄⢀⣠⣄⣾    ]],
				[[ ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀⠄⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
				[[ ⠙⠃   ⣼⣿⡟⠌ ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿⠐⣿⣿⡇ ⠛⠻⢷⣄ ]],
				[[     ▐⢻▄▄▄▄ .⠈⠻⣿⣿ ▌⣷▐▪⣿•⣿▌⠄▄⢿·.   ⠁]],
				[[    •█▌▐▀▄.▀▪⣶⣾⣿⣿▪█·███·██ ▐███▪   ]],
				[[    ▐█▐▐▐▀▀▪▄▄█▀▄▐█▐█▐█▐█ ▌▐▌▐█·   ]],
				[[    ██▐█▐█▄▄▐█▌.▐▌███▐███ ██▌▐█▌   ]],
				[[    ▀▀ █▪▀▀▀ ▀█▄▀. ▀ ▀▀▀▀  █▪▀▀▀   ]]
			}
			dashboard.section.buttons.val = {
				dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
				dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
			}
			local handle = io.popen('fortune')
			local fortune = handle:read("*a")
			handle:close()
			dashboard.section.footer.val = fortune

			dashboard.config.opts.noautocmd = true

			vim.cmd[[autocmd User AlphaReady echo 'ready']]

			alpha.setup(dashboard.config)
		end
	}

	use 'simrat39/rust-tools.nvim'

	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'

	use {
		'saecki/crates.nvim',
		tag = 'v0.3.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
end)
