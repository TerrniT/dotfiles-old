--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save.enabled = true
lvim.colorscheme = "space-nvim"
-- lvim.transparent_window = true

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["dw"] = 'vb"_d'
lvim.keys.normal_mode["x"] = '"_x'
lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["blk"] = ":bdelete<Return>"
lvim.keys.normal_mode["te"] = ":tabedit<Return>"
lvim.keys.normal_mode["<TAB>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

lvim.plugins = {
  {
    'nvim-tree/nvim-web-devicons'
  },
  {
    'Th3Whit3Wolf/space-nvim'
  },
  {
    'andweeb/presence.nvim'
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "gfanto/fzf-lsp.nvim"
  },
  {
    'nvim-lua/plenary.nvim'
  },
  {
    'BurntSushi/ripgrep'
  },
  {
    'sharkdp/fd'
  },
  {
    'shaunsingh/solarized.nvim'
  },
  {
    'wakatime/vim-wakatime'
  },
  {
    'windwp/nvim-ts-autotag',
  },
  {
    'Abstract-IDE/Abstract-cs',
  },
  {
    'marko-cerovac/material.nvim'
  },
  {
    'glepnir/zephyr-nvim'
  },
  {
    'savq/melange-nvim'
  },
  {
    'Everblush/nvim', name = 'everblush'
  },
  {
    "rebelot/kanagawa.nvim"
  },
  {
    'phanviet/vim-monokai-pro'
  },
  {
    'navarasu/onedark.nvim'
  },
  {
    'sonph/onehalf'
  },
  {
    "lifepillar/vim-solarized8"
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      -- Colorizer configuration
      require("colorizer").setup(
        {
          'css',
          'javascript',
          html = {
            mode = 'background'
          },
        },
        {
          mode = 'foreground'
        }
      )
    end
  },
}


-- Autotag configuration
require('nvim-ts-autotag').setup({
  autotag = {
    enable = true,
    filetypes = { "xml", 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue',
      'tsx',
      'jsx', 'rescript' }
  }
})

-- kanagawa theme config
require('kanagawa').setup({
  transparent = false,
})

require 'lspconfig'.tailwindcss.setup {}

-- Discord presence
-- The setup config table shows all available config options with their default values:
require("presence").setup({
  -- General options
  auto_update         = true,                 -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
  neovim_image_text   = "Neovim BTW",         -- Text displayed when hovered over the Neovim image
  main_image          = "neovim",             -- Main image display (either "neovim" or "file")
  client_id           = "793271441293967371", -- Use your own Discord application client id (not recommended)
  log_level           = nil,                  -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  debounce_timeout    = 10,                   -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  enable_line_number  = false,                -- Displays the current line number instead of the current project
  blacklist           = {},                   -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
  buttons             = true,                 -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
  file_assets         = {},                   -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
  show_time           = true,                 -- Show the timer

  -- Rich Presence text options
  editing_text        = "Editing %s",         -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
  file_explorer_text  = "Browsing %s",        -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
  git_commit_text     = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
  plugin_manager_text = "Managing plugins",   -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
  reading_text        = "Reading %s",         -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
  workspace_text      = "Working on %s",      -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
  line_number_text    = "Line %s out of %s",  -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
