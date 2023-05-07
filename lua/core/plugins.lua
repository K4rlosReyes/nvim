local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "nvim-tree/nvim-web-devicons", "nvim-treesitter/nvim-treesitter", {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.1',
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                -- snippet plugin
                "L3MON4D3/LuaSnip",
                dependencies = "rafamadriz/friendly-snippets",
                opts = {
                    history = true,
                    updateevents = "TextChanged,TextChangedI"
                }
            }, -- autopairing of (){}[] etc
            {
                "windwp/nvim-autopairs",
                opts = {
                    fast_wrap = {},
                    disable_filetype = {"TelescopePrompt", "vim"}
                }
            }, -- cmp sources plugins
            {
                "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path"
            }
        }
    }, "neovim/nvim-lspconfig", "williamboman/mason.nvim",
    "navarasu/onedark.nvim", "folke/trouble.nvim",
    "jose-elias-alvarez/null-ls.nvim", {"nvim-neorg/neorg"},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    "TimUntersberger/neogit", "numToStr/Comment.nvim",
    "folke/todo-comments.nvim", "lukas-reineke/indent-blankline.nvim",
    "nvim-tree/nvim-tree.lua", "nvim-lualine/lualine.nvim",
}

local opts = {}
require("lazy").setup(plugins, opts)