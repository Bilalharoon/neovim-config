return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    -- event = { "BufReadPre", "BufNewFile" },
    lazy = false,
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "kylechui/nvim-surround",
    -- version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    -- Optional: See `:h nvim-surround.configuration` and `:h nvim-surround.setup` for details
    -- config = function()
    --     require("nvim-surround").setup({
    --         -- Put your configuration here
    --     })
    -- end
  },
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    -- event = {"BufReadPre", "BufNewFile"},
    config = function()
      require "configs.codecompanionconfig"
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you use the mini.nvim suite
    lazy = false,
    -- bootstrap lazy and all plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig

    opts = {
      preset = "obsidian",

      render_modes = true,
    },
    {
      "smoka7/hop.nvim",
      opts = {
        multi_windows = true,
        keys = "etovxqpdygfblzhckisuran",
        uppercase_labels = true,
      },

      keys = {
        {
          "<leader>fj",
          function()
            require("hop").hint_words()
          end,
          mode = { "n", "x", "o" },
        },
      },
    },
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function()
        require("tokyonight").setup {
          style = "storm", -- Explicitly set the storm variant
          -- transparent = false,
          -- styles = {
          --   sidebars = "dark", -- Ensures sidebars match the theme palette
          --   floats = "dark",
          -- },
          -- -- CRITICAL: Explicitly force tokyonight to override nvim-tree
          sidebars = { "qf", "help", "terminal", "nvim-tree", "NvimTree" },

          -- Safe plugin color mapping integrations
          plugins = {
            all = true, -- Enables support for all recognized plugins including nvim-tree
          },
        }
        vim.cmd [[colorscheme tokyonight-storm]]
      end,
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  
}
