## Neovim Configuration Cheat Sheet

### 📌 General Settings
- **Indentation:**
  - `expandtab` (spaces instead of tabs)
  - `tabstop=2`, `softtabstop=2`, `shiftwidth=2`
  - `autoindent`, `smartindent`

- **Line Numbers:** Enabled

- **File Type & Plugin Settings:**
  - `filetype plugin indent on`

### 🎨 UI & Appearance
- **Theme:** `Catppuccin`
- **Status Line:** `lualine` (Theme: `Dracula`)
- **File Explorer:** `Neo-tree`
- **Icons:** `nvim-web-devicons`

---

## ⌘️ Keybinds

### 💁‍ File Navigation
| Keybind        | Action               |
|---------------|----------------------|
| `<C-n>`       | Toggle Neo-tree file explorer |

### 🔎 Searching & Finding
| Keybind        | Action               |
|---------------|----------------------|
| `<C-p>`       | Find files (Telescope) |
| `<leader>fg`  | Live grep (Telescope) |

### 🛠️ LSP (Language Server Protocol)
| Keybind        | Action                     |
|---------------|----------------------------|
| `K`           | Show hover documentation    |
| `gd`          | Go to definition            |
| `<leader>ca`  | Show code actions           |

### 📝 Formatting
| Keybind        | Action               |
|---------------|----------------------|
| `gg`          | Auto-indent whole file |

---

## 🛠️ Installed Plugins & Features
- **LSP Management:** `mason.nvim`, `mason-lspconfig.nvim`
- **Language Support (LSP):**
  - **Web:** `html`, `cssls`, `eslint`
  - **Python:** `pyright`
  - **Java:** `jdtls`
  - **Rust:** `rust_analyzer`
  - **Lua:** `lua_ls`
  - **Shell/Bash:** `bashls`
  - **Docker:** `dockerls`
  - **YAML, JSON, Terraform:** `yamlls`, `jsonls`, `terraformls`
  - **Markdown:** `marksman`
  - **Misc:** `taplo` (TOML), `lemminx` (XML)

- **Treesitter for Syntax Highlighting & Indentation**
- **Telescope for Fuzzy Finding**
- **Lualine for Status Bar**
- **Neo-tree for File Explorer**


