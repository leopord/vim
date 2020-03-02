

+ [Installation](#installation)
+ [Basic Keybindings](#basic-keybindings)
    - [File](#file)
    - [Find (EasyMotion)](#find-easymotion)
    - [View](#view)
    - [Window & Tab Management](#window--tab-management)
    - [Plugin Management (vim-plug)](#plugin-management-vim-plug)
+ [Plugins](#plugins)
  * [Development](#development)
    - [Coc.nvim](#cocnvim)
    - [Snippets (Coc-snippets)](#snippets-coc-snippets)
    - [Fzf (Fuzzy Finder)](#fzf-fuzzy-finder)
  * [Text Edit](#text-edit)
    - [NERDCommenter](#nerdcommenter)
    - [Surround](#surround)
    - [Subversive](#subversive)
    - [MultipleCursor](#multiplecursor)
  * [Git Related](#git-related)
    - [Gitgutter](#gitgutter)
    - [Fugitive](#fugitive)
  * [Others](#others)
    - [Markdown](#markdown)
    - [VimTex](#vimtex)

# Installation

Install neovim, pynvim, git, ctags, nodejs, fzf, ag (the_silver_searcher), xsel (clipboard tool)

**1. ArchLinux**
```
pacman -S nvim python-pynvim git ctags nodejs fzf the_silver_searcher xsel`)
```

**2. Neovim**
```
git clone httsp://github.com/leopord/nvim.git
```

**3. Install Plugins**

Execute `:PlugInstall` or press `\<leader\>pi` to install plugins.

**Finally, Enjoy NeoVim.**

# Basic Keybindings

Set \<leader\> to WhiteSpace key
```vim
set mapleader=","
```

### File

| Shortcut      | Description                            |
| :-----------: | -------------------------------------- |
| \<leader\> w  | Save current buffer/tab                |
| \<leader\> q  | Close current buffer/tab               |
| W             | Save all buffers/tabs                  |
| Q             | Close all buffers/tabs and quit neovim |
| \<leader\>r   | Reload configuration of neovim         |

### Find (EasyMotion)

|  Shortcut | Description                                         |
|:---------:|------------------------------------------------|
|     f     | Find(Search) {char}{char} forward and backward |
|     F     | Find(Search) {char} forward and backward       |
|     /     | N-character search motion                      |
|    n/N    | Search next/previous match                     |
| Tab/S-Tab | Scroll down/up a page                          |

### View
| Shortcut      | Description                                      |
| :-----------: | -------------------------------                  |
| \<leader\>vs  | Open Startify window                             |
| \<leader\>vf  | Toggle NERDTree file explorer window             |
| \<leader\>vt  | Toggle Tagbar window(Function and Variable list) |
| \<leader\>vu  | Toggle UndoTree window                           |
| \<leader\>vm  | Toggle Markdown Preview window                   |
| \<leader\>vh  | Toggle highlighting for searching pattern        |
| \<leader\>vw  | Toggle soft wrap                                 |

### Window & Tab Management
| Shortcut        | Description                                     |
| :-------------: | ----------------------------------------------- |
| tj              | Go to left window (stop at first window)        |
| tl              | Go to right window (stop at last window)        |
| ti              | Go windows up (stop at first window)            |
| tk              | Go windows down (stop at last window)           |
| tt              | Make all windows (almost) equally high and wide |
| tti             | Increase current window height by 3             |
| ttk             | Decrease current window height by 3             |
| ttj             | Increase current window width by 3              |
| ttl             | Decrease current window width by 3              |
| \<leader\>[num] | Jump to buffer/tab of [num]                     |
| \<leader\>vj  | Move current window to far left                  |
| \<leader\>vl  | Move current window to far right                 |
| \<leader\>vi  | Move current window to very top                  |
| \<leader\>vk  | Move current window to very bottom               |

### Plugin Management (vim-plug)

| Shortcut     | Description                                                       |
| :------------: | ----------------------------                                 |
| \<leader\>pi   | Install Plugins                                              |
| \<leader\>pu   | Install or Update Plugins                                    |
| \<leader\>pp   | Upgrade vim-plug itself                                      |
| \<leader\>pc   | Remove unlisted plugins                                      |
| \<leader\>ps   | Check status of plugins                                      |
| \<leader\>pd   | Examine changes from previous update and the pending changes |

# Plugins

## Development

### Coc.nvim

**KeyBindings**

|  Shortcut | Description                                                           |
|:---------:|-----------------------------------------------------------------------|
|  \<Tab\>  | 1. Trigger completion with characters ahead<br />2. Jump to next item |
| \<S-Tab\> | Jump to previous item                                                 |
|  \<C-p\>  | Trigger completion                                                    |
|   \<CR\>  | Confirm completion                                                    |

**Code Navigation**
| Shortcut     | Description                               |
|:------------:|--------------------------------------|
| K            | Show documentation in preview window |
| gd           | Navigate to definition               |
| gy           | Navigate to type definitin           |
| gi           | Navigate to implementation           |
| gr           | Navigate to references               |
| \<leader\>kr | Symbol rename                        |

**CocList**
| Shortcut     | Description                           |
|:------------:|----------------------------------|
| \<leader\>kf | Formatting selected code         |
| \<leader\>kF | Formatting all code in the file  |
| \<leader\>ka | Show all diagnostics             |
| \<leader\>ke | Manage extensions                |
| \<leader\>kc | Show commands                    |
| \<leader\>ko | Find symbol of current document  |
| \<leader\>ks | Search workspace symbols         |
| \<leader\>kp | Resume latest coc list           |
| \<C-j\>      | Jump to next item of CocList     |
| \<C-k\>      | Jump to previous item of CocList |

**Text Object**
| Shortcut | Description                              |
|:--------:|------------------------------------------|
|    if    | Select inside function (function body)   |
|    af    | Select current function (whole function) |

### Snippets (Coc-snippets)

**KeyBindings**

| Shortcut | Description                       |
|:--------:|------------------------------|
|  \<C-l\> | Trigger snippet expand       |
|  \<C-j\> | Jump to next placeholder     |
|  \<C-k\> | Jump to previous placeholder |

**Commands**
- Use `:CocList snippets` to open snippets list.
- Use `:CocCommand snippets.editSnippets` to edit user snippet of current filetype.
- Use `:CocCommand snippets.openSnippetFiles` to open snippet files of current filetype.

### Fzf (Fuzzy Finder)

| Shortcut      | List                                |
|---------------|-------------------------------------|
| \<leader\>ff  | Files                               |
| \<leader\>fa  | Ag search result                    |
| \<leader\>fb  | Open buffers                        |
| \<leader\>fgt | Tags in the project (`ctags -R`)    |
| \<leader\>ft  | Tags in the current buffer          |
| \<leader\>fgc | Git commits (requires fugitive.vim) |
| \<leader\>fc  | Git commits for the current buffer  |
| \<leader\>fh  | v:oldfiles and open buffers         |
**Note:**
- [ag](https://github.com/ggreer/the_silver_searcher) is a code searching tool similar to `ack`, with a focus on speed.
- [fugitive](https://github.com/tpope/vim-fugitive) is a awesome Git wrapper.

## Text Edit

### NERDCommenter

|          Shortcut         | Description ( **\*** is used frequently )                                                                                                  |
|:---------------------------:|--------------------------------------------------------------------------------------------------------------------------------------------------|
|     [count]\<leader\>cc     | **\*** Comment out the current line or text selected in visual mode.                                                                             |
|     [count]\<leader\>cu     | **\*** Uncomments the selected line(s).                                                                                                          |
|         \<leader\>ca        | **\*** Adds comment delimiters to the end of line and goes into insert mode between them.                                                        |
|     [count]\<leader\>cs     | **\*** Comments out the selected lines with a pretty block formatted layout.                                                                     |
|     [count]\<leader\>cm     | **\*** Comments the given lines using only one set of multipart delimiters.                                                                      |
|     [count]\<leader\>cn     | Same as cc but forces nesting.                                                                                                                   |
| [count]\<leader\>c\<space\> | Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa. |
|     [count]\<leader\>ci     | Toggles the comment state of the selected line(s) individually.                                                                                  |
|     [count]\<leader\>cy     | Same as cc except that the commented line(s) are yanked first.                                                                                   |
|         \<leader\>c$        | Comments the current line from the cursor to the end of line.                                                                                    |
|         \<leader\>cA        | Switches to the alternative set of delimiters.                                                                                                   |
|     [count]\<leader\>cl     | Same as  except that the delimiters are aligned down the left side (\<leader\>cl) or both sides (\<leader\>cb).                                  |

### Surround

**Normal Mode**

|  Command | Description                                                   | Example                               |
|:--------:|----------------------------------------------------------|---------------------------------------|
|  `cs'"`  | Replace ' with "                                         | 'Hello World!' -> "Hello World!"      |
| `cs"<q>` | Replace " with <q></q>                                   | "Hello World!" -> <q>Hello World!</q> |
|  `cst"`  | Full circle with "                                       | Hello World! -> Hello World!
|   `ds"`  | Remove delimters entirely                                | "Hellow World!" -> Hello World!       |
|  `ysiw"` | Surround word(cursor on) with "" (`iw` is a text object) | Hello World! -> "Hellow" World!       |
|  `yss(`  | Surround line with `()` and add some spaceand            | Hellow World! -> ( Hello World! )
|  `yss)`  | Surround line with `()` and no space)                    | Hello World! -> (Hello World!)        |

**Visual Mode**

**Command:** `VS\<p class="important"\>`

Press a capital `V` (for linewise visual mode) followed by `S\<p class="important"\>` (`V` and `S` is always pressed `Shift`, Don't release key).

```
Hello World!
```
Change it to:
```
<p class="important">
Hello World!
</p>
```

### Subversive

|             Shortcut            | Description                                                                                                                                                                                                                                                               |
|:---------------------------------:|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|            s\<motion\>            | Substitute text object provided by `<motion>` with contents of default register (or an explicit register if provided)                                                                                                                                                |
|                 ss                | Subsitute entire line with content of default register                                                                                                                                                                                                               |
|                 S                 | Subsitute text from cursor to end of line with content of default register                                                                                                                                                                                           |
**Exmaple**

Content of Default Register:
```
<Text in register>
```

Press `siw` (cursor is on **Text** of first line)
```
Text will be subsituted with s<motion>.
Text will be subsituted with s<motion>.

Text will be subsituted with ss.
Text will be subsituted with S.
```
to change it to:
```
<Text in register> will be subsituted with s<motion>.
Text will be subsituted with s<motion>.

Text will be subsituted with ss.
Text will be subsituted with S.
```
Now press `sip` to change it to:
```
<Text in register>

Text will be subsituted with ss.
Text will be subsituted with S.
```
To subsitute entire line with default register, press "ss" (cursor on **Text** of third line)
```
<Text in register>

<Text in register>
Text will be subsituted with S/subsituted value.
```
To subsitute text from cursor to end of line, press "S" (cursor is on **/** of fourth line)
```
<Text in register>

<Text in register>
Text will be subsituted with S<Text in register>
```

### MultipleCursor

**normal mode / visual mode**

- start: `<C-n>` start multicursor and add a *virtual cursor + selection* on the match
  - next: `<C-n>` add a new *virtual cursor + selection* on the next match
  - skip: `<C-x>` skip the next match
  - prev: `<C-p>` remove current `virtual cursor + selection` and go back on previous match
- select all: `<A-n>` start multicursor and directly select all matches

Change the *virtual cursors + selection* with **visual mode** commands. For instance: `c`, `s`, `I`, `A` work without any issues. You could also go to **normal mode** by pressing `v` and use normal commands there.

At any time, you can press `<Esc>` to exit back to regular Vim.

**visual mode when multiple lines are selected**

- start: `<C-n>` add *virtual cursors* on each line

You can now change the *virtual cursors* with **normal mode** commands. For instance: `ciw`.

**command**

The command MultipleCursorsFind accepts a range and a pattern (regexp), it creates a visual cursor at the end of each match. If no range is passed in, then it defaults to the entire buffer.

## Git Related

### Gitgutter

|   Shortcut   | Description                                     |
|:------------:|-------------------------------------------------|
| \<leader\>gf | Fold all unchanged lines. Execute again to undo |
| \<leader\>gj | Jump to next hunk                               |
| \<leader\>gk | Jump to previous hunk                           |

### Fugitive

**Keybindings**
|   Shortcut   |     Fugitive    | Command           |
|:------------:|:---------------:|-------------------|
| \<leader\>gg | `:G` `:Gstatus` | `git status`      |
| \<leader\>gr |     `:Gread`    | `git checkout --` |
| \<leader\>gc |    `:Gcommit`   | `git commit -m`   |
| \<leader\>gd |     `:Gdiff`    | `git diff`        |
| \<leader\>gu |     `:Gpull`    | `git pull`        |
| \<leader\>gp |     `:Gpush`    | `git push`        |
**Note:** After execute `:G` or `:Gstatus`, press `g?` to bring up a list of maps for numerous operations including diffing, staging, committing, rebasing, and stashing.

## Others

### Markdown

**Table of Content**

| Shortcut         | Description                               |
| :--------------: | ----------------------------------------- |
| \<leader\>mp     | Generate markdown toc for preview style   |
| \<leader\>mh     | Generate markdown toc for github style    |
| \<leader\>ml     | Generate markdown toc for gitlab style    |
| \<leader\>mu     | Update markdown existing toc              |

**Table Mode**

|    Shortcut   | Description                                                             |
|:-------------:|--------------------------------------------------------------------|
|  \<leader\>mm | Toggle table mode                                                  |
|  \<leader\>mt | Format comma-seprated text to table (text selected in visual mode) |
|  \<leader\>ms | Format text to table by input delimter                             |
|  \<leader\>mj | Move to previous cell                                              |
|  \<leader\>ml | Move to next cell                                                  |
|  \<leader\>mi | Move to cell above                                                 |
|  \<leader\>mk | Move to cell below                                                 |
| \<leader\>mdd | Delete current table row                                           |
| \<leader\>mdc | Delete entire current column                                       |
**Cell Text Object**
- `i|`: Inner table cell
- `a|`: Around table cell (including the immidiate right table separator)

Example:
- `ci|`: Delete cell content and enter insert mode
- `di|`: Delete cell content
- `yi|`: Yank cell content and enter insert mode

<!-- ### Org-Mode

Unsupported. Coming soon.

### VimTex

Unsupported. Coming soon. -->
