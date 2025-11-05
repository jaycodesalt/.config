-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Bootstrap Lazy.nvim
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

-- Load the core configuration files early (ensuring correct loading order)
require("config.options")
require("config.keymaps")

-- Setup LazyVim with all necessary extras for C++, Python, and Full-Stack Web
require("lazy").setup({
  spec = {
    -- 1. CORE LAZYVIM
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        -- Dark theme optimized for modern development
        colorscheme = "sonokai",
        news = { lazyvim = true, neovim = true },
      },
    },

    -- 2. LANGUAGE SUPPORT EXTRAS
    -- C/C++ Development (Includes LSP, Treesitter, etc.)
    { import = "lazyvim.plugins.extras.lang.c" },

    -- Python Development (Includes LSP, Black/isort integration)
    { import = "lazyvim.plugins.extras.lang.python" },

    -- Full-Stack Web Development (TS/JS/HTML/CSS)
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.html" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "lazyvim.plugins.extras.lang.yaml" }, -- Essential for CI/CD, configs

    -- 3. CODE QUALITY & FORMATTING
    { import = "lazyvim.plugins.extras.linting.eslint" }, -- Linting for JS/TS/Web
    { import = "lazyvim.plugins.extras.formatting.prettier" }, -- Universal formatting

    -- 4. DEBUGGING & TESTING
    { import = "lazyvim.plugins.extras.dap.core" }, -- Core Debugger setup
    { import = "lazyvim.plugins.extras.dap.codelldb" }, -- C/C++ Debugger (Requires CodeLLDB install via Mason)
    { import = "lazyvim.plugins.extras.dap.python" }, -- Python Debugger (Requires DebugPy)
    { import = "lazyvim.plugins.extras.test.core" }, -- Core Testing setup (Neotest)
    { import = "lazyvim.plugins.extras.test.python" }, -- Python Testing (pytest support)

    -- 5. UTILITY & APPEARANCE
    { import = "lazyvim.plugins.extras.coding.copilot" }, -- AI Autocompletion
    { import = "lazyvim.plugins.extras.util.mini-hipatterns" }, -- Color highlights, HEX codes, etc.
    { import = "lazyvim.plugins.extras.ui.mini-animate" }, -- Smooth animations for UI transitions (a nice touch!)
    { import = "lazyvim.plugins.extras.ui.mini-tabline" }, -- Enhanced buffer/tab line UI

    -- 6. Custom plugins/overrides in lua/plugins/ (if you need them later)
    { import = "plugins" },
  },
  defaults = { lazy = false, version = false },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  debug = false,
})
