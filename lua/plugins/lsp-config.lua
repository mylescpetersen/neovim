return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- 🌐 Web Development
          "html", "cssls", "eslint",

          -- 🐍 Python
          "pyright", -- "ruff_lsp",

          -- ☕ Java
          "jdtls",

          -- 🦀 Rust
          "rust_analyzer",

          -- 🔨 C/C++
          -- "clangd", "cmake",

          -- 🏎️ Go
          --"gopls",

          -- 🚀 Lua
          "lua_ls",

          -- ☁️ YAML, JSON, Terraform
          "yamlls", "jsonls", "terraformls",

          -- 📄 Markdown
          "marksman",

          -- 📝 Shell & Bash
          "bashls",

          -- 🔧 Misc
          "taplo",   -- TOML
          "lemminx", -- XML
          "dockerls", -- Docker
          -- "ansible-language-server" -- Ansible

        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- Setup
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.marksman.setup({})
      lspconfig.ansiblels.setup({})

      -- Keybinds
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
