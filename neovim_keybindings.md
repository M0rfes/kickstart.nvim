# Neovim Custom Keybindings Reference Guide

This document provides a comprehensive overview of all custom keybindings configured in your Neovim environment. It covers standard shortcuts, LSP controls, search actions, and plugin-specific keymaps (such as Telescope, Gitsigns, DAP, Harpoon, Flash, Yazi, and Snacks.nvim).

---

## 1. General & Editor Keymaps
These keymaps are defined in the core [init.lua](file:///Users/fahim.khan/.config/nvim/init.lua) file and govern basic buffer interactions and window management.

| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `<Esc>` | Normal | `:nohlsearch` | Clear search match highlights. |
| `<leader>q` | Normal | `vim.diagnostic.setloclist` | Open the diagnostic [Q]uickfix list. |
| `<Esc><Esc>` | Terminal | `<C-\><C-n>` | Exit terminal mode. |
| `<C-h>` | Normal | `<C-w><C-h>` | Move cursor focus to the **left** window split. |
| `<C-j>` | Normal | `<C-w><C-j>` | Move cursor focus to the **lower** window split. |
| `<C-k>` | Normal | `<C-w><C-k>` | Move cursor focus to the **upper** window split. |
| `<C-l>` | Normal | `<C-w><C-l>` | Move cursor focus to the **right** window split. |
| `<leader>F` | Normal | Conform formatting | [F]ormat the active buffer using `conform.nvim`. |
| Arrow Keys | N, I, V | Disabled | Remapped to `<Nop>` to encourage `hjkl` navigation. |

---

## 2. LSP (Language Server Protocol) Keymaps
These shortcuts attach automatically when a Language Server binds to a buffer (defined in [init.lua](file:///Users/fahim.khan/.config/nvim/init.lua)).

> [!NOTE]
> Some of these definitions have overrides or alternatives defined in Snacks.nvim (e.g. `gd`, `gD`, `gr`, `gI`, `gy`, `<leader>ss`, `<leader>sS`).

| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `grn` | Normal | `vim.lsp.buf.rename` | [R]e[n]ame the symbol under the cursor. |
| `gra` | N, Visual | `vim.lsp.buf.code_action` | Trigger [G]oto Code [A]ction under the cursor. |
| `grr` | Normal | Telescope / Snacks references | Go to [R]eferences for the symbol. |
| `gri` | Normal | Telescope / Snacks implementations | Jump to LSP [I]mplementations. |
| `grd` | Normal | Telescope / Snacks definitions | Go to LSP [D]efinitions (use `<C-t>` to jump back). |
| `grD` | Normal | `vim.lsp.buf.declaration` | Jump to [D]eclaration (e.g. headers in C). |
| `gO` | Normal | Document symbols | List all symbols inside the current file. |
| `gW` | Normal | Workspace symbols | Search all symbols in the workspace. |
| `grt` | Normal | Type definition | Go to the definition of the symbol's [T]ype. |
| `<leader>th` | Normal | Toggle Inlay Hints | Toggles LSP inlay hints on/off (if supported by language server). |

---

## 3. Snacks.nvim Mappings & Pickers
Your configuration equips [folke/snacks.nvim](file:///Users/fahim.khan/.config/nvim/lua/custom/plugins/snacks.lua) as a rich dashboard, file picker, terminal toggle, and config toggler. It handles many find, search, and LSP navigation options.

### General & Pickers
| Keybinding | Action | Description |
| :--- | :--- | :--- |
| `<leader><leader>` | `Snacks.picker.smart()` | Smart file search in the project root. |
| `<leader>,` | `Snacks.picker.buffers()` | View active buffers. |
| `<leader>/` | `Snacks.picker.grep()` | Grep project contents. |
| `<leader>:` | `Snacks.picker.command_history()` | View command history list. |
| `<leader>n` | `Snacks.notifier.show_history()` | View notification history. |
| `<leader>fb` | `Snacks.picker.buffers()` | Picker for active buffers. |
| `<leader>fc` | `Snacks.picker.files({ cwd = ... })` | Find files inside the Neovim configuration directory. |
| `<leader>ff` | `Snacks.picker.files({ hidden = true })` | Find files (including hidden ones). |
| `<leader>fg` | `Snacks.picker.git_files()` | Find git-tracked files. |
| `<leader>fp` | `Snacks.picker.projects()` | Search workspace projects. |
| `<leader>fr` | `Snacks.picker.recent()` | Find recently opened files. |

### Search Actions
| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `<leader>sb` | Normal | `Snacks.picker.lines()` | Search lines in the current buffer. |
| `<leader>sB` | Normal | `Snacks.picker.grep_buffers()` | Grep lines across all open buffers. |
| `<leader>sg` | Normal | `Snacks.picker.grep()` | Run grep on project. |
| `<leader>sw` | N, Visual | `Snacks.picker.grep_word()` | Grep search word under cursor or visual selection. |
| `<leader>s"` | Normal | `Snacks.picker.registers()` | View Neovim registers. |
| `<leader>s/` | Normal | `Snacks.picker.search_history()` | View search pattern history. |
| `<leader>sa` | Normal | `Snacks.picker.autocmds()` | View active autocommands. |
| `<leader>sc` | Normal | `Snacks.picker.command_history()` | View command history. |
| `<leader>sC` | Normal | `Snacks.picker.commands()` | List and run commands. |
| `<leader>sd` | Normal | `Snacks.picker.diagnostics()` | View project diagnostic errors and warnings. |
| `<leader>sD` | Normal | `Snacks.picker.diagnostics_buffer()` | View buffer diagnostics. |
| `<leader>sh` | Normal | `Snacks.picker.help()` | Browse help pages. |
| `<leader>sH` | Normal | `Snacks.picker.highlights()` | List highlight groups. |
| `<leader>si` | Normal | `Snacks.picker.icons()` | Browse and insert icons. |
| `<leader>sj` | Normal | `Snacks.picker.jumps()` | View jump list. |
| `<leader>sk` | Normal | `Snacks.picker.keymaps()` | Browse custom and default keymaps. |
| `<leader>sl` | Normal | `Snacks.picker.loclist()` | Location list. |
| `<leader>sm` | Normal | `Snacks.picker.marks()` | Browse active marks. |
| `<leader>sM` | Normal | `Snacks.picker.man()` | Search system man pages. |
| `<leader>sp` | Normal | `Snacks.picker.lazy()` | Search through plugin specifications. |
| `<leader>sq` | Normal | `Snacks.picker.qflist()` | Quickfix list. |
| `<leader>sR` | Normal | `Snacks.picker.resume()` | Resume last picker search. |
| `<leader>su` | Normal | `Snacks.picker.undo()` | Visual undo history tree. |
| `<leader>uC` | Normal | `Snacks.picker.colorschemes()` | Select and preview colorschemes. |

### LSP Navigation (Snacks replacements)
| Keybinding | Action | Description |
| :--- | :--- | :--- |
| `gd` | `Snacks.picker.lsp_definitions()` | Goto definition. |
| `gD` | `Snacks.picker.lsp_declarations()` | Goto declaration. |
| `gr` | `Snacks.picker.lsp_references()` | View all symbol references. |
| `gI` | `Snacks.picker.lsp_implementations()` | Goto implementations. |
| `gy` | `Snacks.picker.lsp_type_definitions()` | Goto type definition. |
| `gai` | `Snacks.picker.lsp_incoming_calls()` | View incoming function calls. |
| `gao` | `Snacks.picker.lsp_outgoing_calls()` | View outgoing function calls. |
| `<leader>ss` | `Snacks.picker.lsp_symbols()` | Open LSP document symbols list. |
| `<leader>sS` | `Snacks.picker.lsp_workspace_symbols()` | Open LSP workspace symbols. |

### Utilities, Toggles & UI
| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `<leader>z` | Normal | `Snacks.zen()` | Toggle Zen Mode (removes clutter). |
| `<leader>Z` | Normal | `Snacks.zen.zoom()` | Toggle split zoom (maximizes current window). |
| `<leader>.` | Normal | `Snacks.scratch()` | Toggle quick scratch buffer. |
| `<leader>S` | Normal | `Snacks.scratch.select()` | Select from existing scratch buffers. |
| `<leader>bd` | Normal | `Snacks.bufdelete()` | Safely delete/close the current buffer. |
| `<leader>cR` | Normal | `Snacks.rename.rename_file()` | Rename current file on disk. |
| `<leader>gB` | N, Visual | `Snacks.gitbrowse()` | Open file/selection in Git web browser hosting. |
| `<leader>gg` | Normal | `Snacks.lazygit()` | Open Lazygit. |
| `<leader>un` | Normal | `Snacks.notifier.hide()` | Dismiss all active toast notifications. |
| `<C-/>` or `<C-_>` | Normal | `Snacks.terminal()` | Toggle built-in terminal drawer. |
| `]]` | N, Terminal | `Snacks.words.jump(count)` | Jump to next reference of the word under cursor. |
| `[[` | N, Terminal | `Snacks.words.jump(-count)` | Jump to previous reference of the word under cursor. |
| `<leader>N` | Normal | News window | Opens the Neovim news log (`news.txt`). |

### Quick Option Toggles
These keymaps toggle buffer options instantly and report changes:
- `<leader>us`: Toggle spelling check.
- `<leader>uw`: Toggle text wrapping.
- `<leader>uL`: Toggle relative line numbers.
- `<leader>ud`: Toggle diagnostics rendering.
- `<leader>ul`: Toggle absolute line numbers.
- `<leader>uc`: Toggle conceallevel (hidden markers/markup).
- `<leader>uT`: Toggle Treesitter syntax highlighting.
- `<leader>ub`: Toggle background color (Dark/Light style).
- `<leader>uh`: Toggle LSP Inlay Hints.
- `<leader>ug`: Toggle indent guides.
- `<leader>uD`: Toggle dimmed text (highlights current paragraph/section).

---

## 4. Git Mappings (Gitsigns & LazyGit)
Configurations in [gitsigns.lua](file:///Users/fahim.khan/.config/nvim/lua/kickstart/plugins/gitsigns.lua) and [lazygit.lua](file:///Users/fahim.khan/.config/nvim/lua/custom/plugins/lazygit.lua).

| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `<leader>g` | Normal | `:LazyGit` | Open floating LazyGit instance. |
| `]c` | Normal | `gitsigns.nav_hunk 'next'` | Jump to next git hunk/change. |
| `[c` | Normal | `gitsigns.nav_hunk 'prev'` | Jump to previous git hunk/change. |
| `<leader>hs` | N, Visual | `gitsigns.stage_hunk` | Stage current hunk. |
| `<leader>hr` | N, Visual | `gitsigns.reset_hunk` | Reset current hunk. |
| `<leader>hS` | Normal | `gitsigns.stage_buffer` | Stage entire file buffer. |
| `<leader>hu` | Normal | `gitsigns.stage_hunk` | Undo staging of the hunk under cursor. |
| `<leader>hR` | Normal | `gitsigns.reset_buffer` | Reset entire file buffer. |
| `<leader>hp` | Normal | `gitsigns.preview_hunk` | Preview change inline. |
| `<leader>hb` | Normal | `gitsigns.blame_line` | Run Git Blame for current line. |
| `<leader>hd` | Normal | `gitsigns.diffthis` | Diff current file buffer against index. |
| `<leader>hD` | Normal | `gitsigns.diffthis '@'` | Diff current file buffer against last commit. |
| `<leader>tb` | Normal | Toggle blame line | Toggle display of blame info at current line. |
| `<leader>tD` | Normal | Toggle deleted | Toggle inline display of deleted code chunks. |

---

## 5. Debugging Keymaps (nvim-dap)
DAP keybinds are configured in [debug.lua](file:///Users/fahim.khan/.config/nvim/lua/kickstart/plugins/debug.lua).

| Keybinding | Mode | Action | Description |
| :--- | :---: | :--- | :--- |
| `<F5>` | Normal | Start/Continue | Start debugging or continue to the next breakpoint. |
| `<F1>` | Normal | Step Into | Step into current function call. |
| `<F2>` | Normal | Step Over | Step over current line. |
| `<F3>` | Normal | Step Out | Step out of current function scope. |
| `<leader>b` | Normal | Toggle breakpoint | Toggle breakpoint on the current line. |
| `<leader>B` | Normal | Conditional breakpoint | Prompts for a condition; stops execution only if condition is true. |
| `<F7>` | Normal | Toggle Dap UI | Show/Hide the Dap UI panels (restores last session view). |

---

## 6. Navigation Plugins (Flash, Harpoon, Yazi)

### Flash.nvim (Jumping)
Flash maps fast keystrokes to jump instantly (defined in [flash.lua](file:///Users/fahim.khan/.config/nvim/lua/custom/plugins/flash.lua)).
- `s` (N, X, O modes): Open flash jump overlay for direct navigation.
- `S` (N, X, O modes): Flash Treesitter selector (select structural nodes).
- `r` (O mode): Remote Flash (jump, run operation, return cursor).
- `R` (O, X modes): Treesitter node search.
- `<c-s>` (Command mode): Toggle flash search integration on command line.

### Harpoon 2 (File Pinning)
Harpoon allows quick jumping between pinned files (defined in [harpoon.lua](file:///Users/fahim.khan/.config/nvim/lua/custom/plugins/harpoon.lua)).
- `<leader>a`: Add current file to Harpoon pins.
- `<leader>H`: Toggle the Harpoon quick menu list.
- `<leader>hh`: Remove current file from Harpoon pins.
- `<leader>1` to `<leader>9`: Go to Harpoon file slot 1-9.
- `<leader>0`: Go to Harpoon file slot 10.

### Yazi File Explorer
Floating terminal file manager (defined in [yazi.lua](file:///Users/fahim.khan/.config/nvim/lua/custom/plugins/yazi.lua)).
- `<leader>-`: Open Yazi floating file manager.
