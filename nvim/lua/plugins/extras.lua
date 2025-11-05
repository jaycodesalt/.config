return {
  ---------------------------------------------------------------------------
  -- 🧠 C++ and Python Development Enhancements
  ---------------------------------------------------------------------------
  {
    "p00f/clangd_extensions.nvim",
    ft = { "cpp", "c", "hpp" },
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("clangd_extensions").setup({
        inlay_hints = { inline = false },
      })
    end,
  },

  {
    "Civitasv/cmake-tools.nvim",
    ft = { "cpp", "c", "cmake" },
    config = function()
      require("cmake-tools").setup({
        cmake_command = "cmake",
        build_directory = "build",
        cmake_build_directory = "build",
        cmake_build_type = "Debug",
      })
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      local dap_python = require("dap-python")
      dap_python.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
    end,
  },

  ---------------------------------------------------------------------------
  -- 🧪 Testing & Coverage
  ---------------------------------------------------------------------------
  {
    "andythigpen/nvim-coverage",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },

  ---------------------------------------------------------------------------
  -- ⚙️ Tools & Automation
  ---------------------------------------------------------------------------
  {
    "stevearc/overseer.nvim",
    cmd = { "OverseerRun", "OverseerToggle" },
    config = true,
  },

  ---------------------------------------------------------------------------
  -- 🎯 Navigation & Productivity
  ---------------------------------------------------------------------------
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })
      vim.keymap.set("n", "<leader>hh", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon menu" })
      vim.keymap.set("n", "<leader>hj", function()
        harpoon:list():select(1)
      end)
      vim.keymap.set("n", "<leader>hk", function()
        harpoon:list():select(2)
      end)
      vim.keymap.set("n", "<leader>hl", function()
        harpoon:list():select(3)
      end)
      vim.keymap.set("n", "<leader>h;", function()
        harpoon:list():select(4)
      end)
    end,
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = true,
  },

  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    config = true,
  },

  ---------------------------------------------------------------------------
  -- 🧰 UI & Comfort
  ---------------------------------------------------------------------------
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = true,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = true,
  },

  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    config = function()
      require("spectre").setup()
      vim.keymap.set("n", "<leader>S", require("spectre").open, { desc = "Open Spectre" })
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require("symbols-outline").setup({ width = 25 })
      vim.keymap.set("n", "<leader>so", ":SymbolsOutline<CR>", { desc = "Symbols Outline" })
    end,
  },

  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "VeryLazy",
    config = function()
      require("ufo").setup()
    end,
  },

  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = true,
  },
}
