# Kitty Terminal Shortcuts Cheatsheet

**Note:** `kitty_mod` = `Ctrl+Shift` by default

## Window Management (Splits/Panes)

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+Enter` | New window | Split into new pane (same directory with shell integration) |
| `Ctrl+Shift+W` | Close window | Close current pane |
| `Ctrl+Shift+]` | Next window | Focus next pane |
| `Ctrl+Shift+[` | Previous window | Focus previous pane |
| `Ctrl+Shift+R` | Resize mode | Enter resize mode (use arrow keys) |
| `Ctrl+Shift+F7` | Visual select | Show overlay to select window |
| `Ctrl+Shift+1-9` | Jump to window | Jump to window 1-9 |
| `Ctrl+Shift+0` | Tenth window | Jump to 10th window |

## Tab Management

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+T` | New tab | Create new tab |
| `Ctrl+Shift+Q` | Close tab | Close current tab |
| `Ctrl+Shift+Right` | Next tab | Switch to next tab |
| `Ctrl+Shift+Left` | Previous tab | Switch to previous tab |
| `Ctrl+Shift+.` | Move tab forward | Reorder tab right |
| `Ctrl+Shift+,` | Move tab backward | Reorder tab left |
| `Ctrl+Shift+Alt+T` | Set tab title | Rename current tab |

## Layout Management

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+L` | Next layout | Cycle through layouts (tall, fat, grid, etc.) |

## Copy/Paste

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+C` | Copy | Copy selected text to clipboard |
| `Ctrl+Shift+V` | Paste | Paste from clipboard |
| `Ctrl+Shift+S` | Paste selection | Paste from selection (X11) |

## Scrolling

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+Up` | Scroll up | Scroll one line up |
| `Ctrl+Shift+Down` | Scroll down | Scroll one line down |
| `Ctrl+Shift+Page Up` | Page up | Scroll one page up |
| `Ctrl+Shift+Page Down` | Page down | Scroll one page down |
| `Ctrl+Shift+Home` | Scroll top | Scroll to top |
| `Ctrl+Shift+End` | Scroll bottom | Scroll to bottom |
| `Ctrl+Shift+H` | Scrollback | Open scrollback in pager |
| `Ctrl+Shift+G` | Last command output | Show last command output |
| `Ctrl+Shift+Z` | Previous prompt | Jump to previous shell prompt |
| `Ctrl+Shift+X` | Next prompt | Jump to next shell prompt |

## Font Size

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+=` or `Ctrl+Shift++` | Increase | Increase font size |
| `Ctrl+Shift+-` | Decrease | Decrease font size |
| `Ctrl+Shift+Backspace` | Reset | Reset font size |

## URL/Text Selection

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+E` | Open URL | Open URL under cursor |
| `Ctrl+Shift+P > F` | Insert path | Hint and insert path |
| `Ctrl+Shift+P > L` | Insert line | Hint and insert line |
| `Ctrl+Shift+P > W` | Insert word | Hint and insert word |

## Miscellaneous

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+Shift+F5` | Reload config | Reload kitty.conf |
| `Ctrl+Shift+F6` | Debug config | Show current configuration |
| `Ctrl+Shift+F11` | Toggle fullscreen | Toggle fullscreen mode |
| `Ctrl+Shift+F2` | Edit config | Open kitty.conf in editor |
| `Ctrl+Shift+Escape` | Kitty shell | Open kitty command shell |
| `Ctrl+Shift+Delete` | Reset terminal | Reset terminal state |
| `Ctrl+Shift+U` | Unicode input | Input Unicode character |

## Custom Shortcuts (Your Config)

| Shortcut | Action | Description |
|----------|--------|-------------|
| `Ctrl+P` | Previous window | Jump to last window (custom) |
| `Ctrl+Arrow` | Move window | Move window in direction |

## Tips

1. **Stay in same directory when splitting:** Use `launch --cwd=current` for splits
2. **Shell integration:** Enable for better prompt jumping and directory tracking
3. **Layouts:** Kitty supports multiple layouts (tall, fat, grid, horizontal, vertical, stack)
4. **Visual window select:** Use `Ctrl+Shift+F7` for quick window jumping
5. **Mouse support:** Click on window borders to resize, click tabs to switch

## Common Actions to Add

```conf
# Split window keeping current directory
map ctrl+shift+enter launch --cwd=current

# Split vertically
map ctrl+shift+\ launch --location=vsplit --cwd=current

# Split horizontally  
map ctrl+shift+- launch --location=hsplit --cwd=current

# Toggle zoom current window
map ctrl+shift+z toggle_layout stack

# New tab with current directory
map ctrl+shift+t launch --type=tab --cwd=current
```
