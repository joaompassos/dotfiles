# Agent Instructions for Neovim Configuration

## Build/Test Commands
- No build/test commands (this is a Neovim config, not a code project)
- Test changes by reloading Neovim: `:source %` or restart Neovim
- Check plugin status: `:Lazy` (for lazy.nvim plugin manager)
- Check LSP status: `:Mason` (for language servers)

## Code Style

**Language**: Lua (for Neovim configuration)

**Indentation**: 4 spaces (tabs expanded, see `set.lua:4-7`)

**Structure**: 
- Main entry: `init.lua` loads `johnsteps` module
- Core configs: `lua/johnsteps/set.lua` (options), `remap.lua` (keymaps), `lazy_init.lua` (plugin manager)
- Plugins: Each in separate file under `lua/johnsteps/lazy/`

**Plugin Format**: Return lazy.nvim spec tables from plugin files (see existing plugins for examples)

**Comments**: Descriptive comments explaining "why" for complex logic (see `lsp.lua` for examples)

**Error Handling**: Use `pcall()` for optional functionality (see `telescope.lua:48-49`)

**Naming**: snake_case for files/variables, descriptive names for plugin files matching plugin purpose
