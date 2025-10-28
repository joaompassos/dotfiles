# Agent Guidelines for Kitty Configuration

## Repository Type
This is a Kitty terminal emulator configuration directory, not a software codebase.

## File Structure
- `kitty.conf` - Main configuration file
- `current-theme.conf` - Theme configuration (Catppuccin-Mocha)
- `kitty.conf.bak` - Backup configuration

## Build/Test Commands
N/A - Configuration files only, no build/test/lint commands

## Code Style Guidelines
- Configuration follows Kitty's INI-style format
- Comments use `#` prefix
- Settings are `key value` pairs (no `=` sign)
- Vim modeline at top: `# vim:fileencoding=utf-8:foldmethod=marker`
- Sections marked with `#: Section Name {{{` and `#: }}}`

## Modification Guidelines
- Test changes: Reload config with `Ctrl+Shift+F5` or restart Kitty
- Backup before major changes (`.bak` suffix)
- Refer to official docs: https://sw.kovidgoyal.net/kitty/conf/
