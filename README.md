# VKO vim configuration

Advanced VIM Configuration for FullStack Developers, for now it's supporting.
- Backend mostly for Ruby (Rails, Hanami), Elixir, Python, GO
- Javascript mostly for React
- Ops: Docker, Nginx, Ansible.

This is a merge between [Alex's old config](https://github.com/AlexVKO/my-vimrc) and
[Rafi's config](https://github.com/rafi/vim-config)

Best with Neovim or Vim 8 with +python3 extensions enabled.

## Features

- Fast startup time
- Robust, yet light-weight
- Lazy-load 95% of plugins with [Shougo/dein.vim]
- Modular configuration
- Denite (Unite's successor) centric work-flow
- Extensive Deoplete and Neocomplete setup
- Lightweight simple status/tabline
- Easy customizable theme
- Premium color-schemes
- Central location for tags

## Screenshot

![Vim screenshot](http://rafi.io/static/img/project/vim-config/features.png)

# Some Key-mappings

## General Editing

| Key           | Mode            | Action                                    |
| ------------- | :-------------: | -----:                                    |
| `cp`           | Normal        | Duplicate Paragraph                        |
| `, + Space`    | Normal        | Remove all spaces at EOL                   |
| `<leader>+a`   | Normal        | Align Paragraph                            |
| `<leader>+d`   | Normal/Visual | Duplicate line or selection                |
| `<leader>+saw` | Normal/Visual | Replace all occurences under cursor        |
| `W!!`          | Command       | Write as root                              |
| `<leader>+o`   | Normal        | Open tag-bar                               |
| `<leader>+G`   | Normal        | Toggle distraction-free writing            |
| `gc`           | Normal/visual | Toggle comments                            |
| `cn/cN`        | Normal/Visual | Change current word in a repeatable manner |
| `:DiffOrig`    | Command       | Show the diff of the last save             |
| `Ctrl+o`       | Insert        | Expand snippet                             |
| `s`            | Visual        | Replace within se area                     |
| `Ctrl+o`       | Insert        | Expand snippet                             |
| `v`            | Visual/select | Expand selection                           |
| `V`            | Visual/select | Reduce selection                           |
| `gp`           | Normal        | Select last paste                          |
| `;+t`          | Normal        | Search for symbol under cursor             |
| `;+o`          | Normal        | Search for functions                       |

## Leaders
| Key           | Description |
| ------------- | -----:      |
| `;`           | Primary     |
| `space`       | Secondary   |

## Tabs

| Key           | Mode            | Action                         |
| ------------- | :-------------: | -----:                         |
| `s+t`         | Normal          | Open new tab (:tabnew)         |
| `s+q`         | Normal          | Closes current buffer (:close) |
| `alt+j`       | Normal          | Next tab                       |
| `alt+k`       | Normal          | Previous tab                   |
| `Arrows`      | All             | Resize Splits                  |
| `ctrl+x`      | All             | Rotate Splits                  |

## Windows
| Key           | Mode            | Action                              |
| ------------- | :-------------: | -----:                              |
| `s+o`         | Normal          | Close other windows (:only)         |
| `s+x`         | Normal          | Remove buffer, leave blank window   |
| `s+v`         | Normal          | Horizontal split (:split)           |
| `s+g`         | Normal          | Vertical split (:vsplit)            |
| `s+b`         | Normal          | Toggle to last window               |
| `<leader>+sv` | Normal          | Split with previous buffer          |
| `<leader>+sg` | Normal          | Vertical split with previous buffer |
| `Ctrl+<hjkl>` | Normal          | move to window                      |

## Scrolling

| Key           | Mode            | Action                                                    |
| ------------- | :-------------: | -----:                                                    |
| `z+<hjkl>`    | Normal          | scroll to position                                        |
| `zz`          | Normal          | scroll in a way the cursors toggle between top and middle |

## Search for Files (Denite, Fzf)

| Key                        | Mode            | Action                            |
| -------------              | :-------------: | -----:                            |
| `;+f`                      | Normal          | File search                       |
| `st`                       | Denite          | Open in a new tab                 |
| `sg`                       | Denite          | Open in a vertical split          |
| `sv`                       | Denite          | Open in a horizontal split        |

## Search -> jump to text (EasyMotion)

| Key           | Mode            | Action                            |
| ------------- | :-------------: | -----:                            |
| `;+/`         | Normal          | Search on lines of current file   |
| `s+s`         | Normal          | Jump to two characters from input |
| `s+f`         | Normal          | Jump over-windows                 |
| `s+/`         | Normal/operator | Jump to free-search               |
| `?`           | Normal          | go to last edit position          |
| `?`           | Normal          | go to previous cursor position    |
| `<leader>+gg` | Normal/Visual   | Grep word under cursor            |
|               |                 |                                   |

## Find and Replace between all files (Far)

| Key                        | Mode            | Action                                      |
| -------------              | :-------------: | -----:                                      |
| `:Far <from> <to> <files>` | Command         | Open find and replace console (alt+shift+f) |
| `t`                        | Far             | Toggle the match above the cursor           |
| `:Fardo`                   | Far             | Do the replacement                          |
| `:F <patter>`              | Command         | find all                                    |

## Ctags (Goto definition)

| Key           | Mode            | Action                             |
| ------------- | :-------------: | -----:                             |
| `Ctrl+]`      | Normal          | Go to definition                   |
| `Ctrl+T`      | Normal          | Jump back from definition          |
| `alt+]`       | Normal          | Go to definition(split vertically) |

## Multiple Cursor

| Key           | Mode            | Action                |
| ------------- | :-------------: | -----:                |
| `ctrl+n`      | Normal          | Select next occurence |
| `ctrl+p`      | Normal          | Undo selection        |
| `ctrl+x`      | Normal          | Skip current          |

## Bookmarks

| Key           | Mode            | Action                          |
| ------------- | :-------------: | -----:                          |
| `Key`         | Mode            | Action                          |
| `m+a`         | Normal          | Show list of all bookmarks      |
| `m+x`         | Normal          | Remove all bookmarks            |
| `m+m`         | Normal          | Toggle bookmark in current line |
| `m+n`         | Normal          | Jump to next bookmark           |
| `m+p`         | Normal          | Jump to previous bookmark       |
| `m+i`         | Normal          | Annotate bookmark               |

## Sessions

| Key           | Mode            | Action                                 |
| ------------- | :-------------: | -----:                                 |
| `<leader>+se` | Normal          | Save current workspace as last session |
| `<leader>+os` | Normal          | Load last session                      |

## Misc

| Key           | Mode            | Action                                   |
| ------------- | :-------------: | -----:                                   |
| `<leader>+b`  | Normal          | Toggle colorscheme background dark/light |

## Spelling

| Key           | Mode            | Action                  |
| ------------- | :-------------: | -----:                  |
| `<leader>+K`  | Normal          | Thesaurus               |
| `<leader>+?`  | Normal          | Dictionary (macOS only) |

## Foldings

| Key           | Mode            | Action                                                                         |
| ------------- | :-------------: | -----:                                                                         |
| `za`          | Normal          | Toggle Fold current level                                                      |
| `zr`          | Normal          | reduces folding by opening one more level of folds throughout the whole buffer |
| `zR`          | Normal          | Open all folds                                                                 |
| `zMza`>       | Normal          | Close the others except current                                                |

## NerdTree and Sidebar

| Key           | Mode            | Action                                 |
| ------------- | :-------------: | -----:                                 |
| `;+e`         | Normal          | Toggle file explorer                   |
| `;+a`         | Normal          | Toggle file explorer on current file   |
| `<leader>+y`  | Normal          | Copy file-path to clipboard(relative)  |
| `<leader>+Y`  | Normal          | Copy file-path to clipboard(absolute)  |
| `w`           | Inside NerdTree | Toggle window size                     |
| `N`           | Inside NerdTree | Create new file or directory           |
| `st`          | Inside NerdTree | Open file in new tab                   |
| `sv`          | Inside NerdTree | Open file in a horizontal split        |
| `sg`          | Inside NerdTree | Open file in a vertical split          |
| `&`           | Inside NerdTree | Jump to project root                   |
| `gf`          | Inside NerdTree | Search in selected directory for files |
| `gr`          | Inside NerdTree | Grep in selected directory             |

## Git

| Key           | Mode            | Action               |
| ------------- | :-------------: | -----:               |
| `<leader>+gl` | Normal          | Git log (all)        |
| `<leader>+gs` | Normal          | Git status           |
| `<leader>+gc` | Normal          | Git changed          |
| `<leader>+ga` | Normal          | Git add current file |
| `<leader>+gS` | Normal          | Git status           |
| `<leader>+gd` | Normal          | Git diff             |
| `<leader>+gD` | Normal          | Close diff           |
| `<leader>+gc` | Normal          | Git commit           |
| `<leader>+gb` | Normal          | Git blame            |
| `<leader>+gB` | Normal          | Open in browser      |
| `<leader>+gp` | Normal          | Git push             |
| `m+g`         | Normal          | Open Magit           |

## Tabular

| Key           | Mode            | Action                    |
| ------------- | :-------------: | -----:                    |
| `alt+shif+a`  | Normal/Visual   | Alig text by given patter |

## Surround motions

| Key           | Mode            | Action     |
| ------------- | :-------------: | -----:     |
| `,"`          | Normal          | surround " |
| `,'`          | Normal          | surround ' |
| `,]`          | Normal          | surround ] |
| `,[`          | Normal          | surround [ |
| `,{`          | Normal          | surround { |
| `,}`          | Normal          | surround } |
| `,(`          | Normal          | surround ( |
| `,)`          | Normal          | surround ) |

# Extra Text Objects
| Key           | Mode            | Action            |
| ------------- | :-------------: | -----:            |
| `i`           | Normal          | Indentation level |
| `_`           | Normal          | Underscore        |
| `e`           | Normal          | Entire file       |
| `r`           | Normal          | Ruby block        |

# Languages
## General
| Key           | Mode            | Action                                              |
| ------------- | :-------------: | -----:                                              |
| NR            | Command         | - Open the selected region in a new narrowed window |
|               |                 |                                                     |

## Ruby/Rails

| Key              | Mode            | Action                                                |
| -------------    | :-------------: | -----:                                                |
| `,#`             | Normal          | ruby string interpolation #{}                         |
| `r`              | Normal          | Ruby block                                            |
| `gf`             | Normal          | goto                                                  |
| `:A`             | Command         | Alternate file                                        |
| `:AS`            | Command         | Alternate file in split                               |
| `:R`             | Command         | Related file                                          |
| `:RS`            | Command         | Related file in split                                 |
| `]m`             | Normal          | To edit start of next method definition               |
| `]M`             | Normal          | To go to end of next method definition                |
| `[m`             | Normal          | To start of previous method definition                |
| `[M`             | Normal          | To end of previous method definition                  |
| `<learder>+rap`  | Normal          | Add params to method                                  |
| `<learder>+rit`  | Normal          | Remove declaration of the variable and use the result |
| `<learder>+rcpc` | Normal          | From if one line to multiline                         |
| `<learder>+rec`  | Normal          | Extract Constant                                      |
| `<learder>+rel`  | Normal          | Exrtact let                                           |
| `<learder>+relv` | Normal          | To local variable                                     |
| `<learder>+rrlv` | Normal          | Rename local variable                                 |
| `<learder>+rriv` | Normal          | Rename instance variable                              |

## Python/Flask

| Key           | Mode                           | Action         |
| ------------- | :-------------:                | -----:         |
| `af`          | Normal                         | function       |
| `if`          | Normal                         | inner function |
| `ac`          | Normal                         | class          |
| `ic`          | Normal                         | inner class    |
| `[pf / ]pf`   | move to next/previous function | class          |
| `[pc / ]pc`   | move to next/previous class    | inner class    |

## Javascript

| Key            | Mode            | Action                                                              |
| -------------  | :-------------: | -----:                                                              |
| `:ImportJSFix` | Command         | Import any missing modules and remove any modules that are not used |
| `:JsDoc`       | Command         | Generate JSDoc for the function                                     |

## HTML / JSX

| Key           | Mode            | Action                                |
| ------------- | :-------------: | -----:                                |
| `Ctrl+y + ,`  | Command         | Expand emmet sequence                 |
| `Ctrl+y + ,`  | Visual          | Wrap selected tag with emmet sequence |
| `<c-y>d`      | INSERT          | Balance a Tag Inward                  |
| `<c-y>D`      | INSERT          | Balance a Tag Outward                 |
| `<c-y>n`      | INSERT          | Go to the Next Edit Point                 |
| `<c-y>N`      | INSERT          | Go to the Previous Edit Point                 |


## Install

**_1._** Let's clone this repo! Clone to `~/.config/nvim`,
we'll also symlink it for Vim:

```sh
mkdir ~/.config
git clone git://github.com/rafi/vim-config.git ~/.config/nvim
ln -s ~/.vim ~/.config/nvim
```

- _Note:_ If your system sets `$XDG_CONFIG_HOME`,
  use that instead of `~/.config` in the code above.
  Nvim follows the XDG base-directories convention.

**_2._** Almost done! You'll need a YAML interpreter, if you have Ruby
installed - you can skip this step. Otherwise, either install [yaml2json],
or use Python:

```sh
pip3 install --user --upgrade PyYAML
```

**_3._** If you are a _first-time Neovim user_, you need the python-neovim
packages. Don't worry, run the script provided:

```sh
cd ~/.config/nvim
./venv.sh
```

**_4._** Run `make test` to test your nvim/vim version and compatibility.

**_5._** Run `make` to install all plugins.

Enjoy!

### Recommended Linters

- Node.js based linters:

```sh
npm -g install jshint jsxhint jsonlint stylelint sass-lint
npm -g install raml-cop markdownlint-cli write-good
```

- Python based linters:

```sh
pip install --user pycodestyle pyflakes flake8 vim-vint proselint yamllint
```

- Shell lint: [shellcheck.net](https://www.shellcheck.net/)
- HTML Tidy: [html-tidy.org](http://www.html-tidy.org/)

### Recommended Tools

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- z (jump around): [rupa/z](https://github.com/rupa/z)
- Universal ctags: [ctags.io](https://ctags.io/)
- Fuzzy file finders: [fzf](https://github.com/junegunn/fzf), [fzy](https://github.com/jhawthorn/fzy), or [peco](https://github.com/peco/peco)
- Tern: `npm -g install tern`

## Upgrade

Run `make update`

## Structure

- [config/](./config) - Configuration
  - [plugins/](./config/plugins) - Plugin configurations
  - [plugins.yaml](./config/plugins.yaml) - _**Plugins!**_
  - [vimrc](./config/vimrc) - Initialization
  - [init.vim](./config/init.vim) - `runtimepath` initialization
  - [general.vim](./config/general.vim) - General configuration
  - [neovim.vim](./config/neovim.vim) - Neovim specific setup
  - [mappings.vim](./config/mappings.vim) - Key-mappings
  - [theme.vim](./config/theme.vim) - Color-scheme and theme setup
  - [filetype.vim](./config/filetype.vim) - Language behavior
  - [menus.vim](./config/menus.vim) - User menus for reference
  - [terminal.vim](./config/terminal.vim) - Terminal configuration
- [ftplugin/](./ftplugin) - Language specific custom settings
- [plugin/](./plugin) - Customized small plugins
- [snippets/](./snippets) - Personal code snippets
- [themes/](./themes) - Themes! Combination of styles and color-scheme
- [filetype.vim](./filetype.vim) - Custom filetype detection

## Plugin Highlights

- Package management with caching enabled and lazy loading
- Project-aware tabs and label
- NERDTree as file-manager + Git status icons
- Go completion via vim-go and gocode
- Javascript completion via Tern
- Python Jedi completion, PEP8 convention
- Languages: PHP, Ansible, css3, csv, json, less, markdown, mustache
- Helpers: Undo tree, bookmarks, git, tmux navigation,
    hex editor, sessions, and much more.

_Note_ that 95% of the plugins are **[lazy-loaded]**.

## Non Lazy-Loaded Plugins

Name           | Description
-------------- | ----------------------
[Shougo/dein.vim] | Dark powered Vim/Neovim plugin manager
[rafi/awesome-colorschemes] | Awesome color-schemes
[rafi/vim-badge] | Bite-size badges for the tab & status lines
[itchyny/vim-gitbranch] | Lightweight git branch detection
[itchyny/vim-parenmatch] | Efficient alternative to the standard matchparen plugin
[thinca/vim-localrc] | Enable configuration file of each directory
[christoomey/tmux-navigator] | Seamless navigation between tmux panes and vim splits
[junegunn/vim-peekaboo] | See the contents of registers
[tpope/vim-sleuth] | Heuristically set buffer indent options
[itchyny/cursorword] | Underlines word under cursor

## Lazy-Loaded Plugins

### Language

Name           | Description
-------------- | ----------------------
[othree/html5.vim] | HTML5 omnicomplete and syntax
[mustache/vim-mustache-handlebars] | Mustache and handlebars syntax
[pearofducks/ansible-vim] | Improved YAML support for Ansible
[mitsuhiko/vim-jinja] | Jinja support in vim
[groenewege/vim-less] | Syntax for LESS
[hail2u/vim-css3-syntax] | CSS3 syntax support to vim's built-in `syntax/css.vim`
[othree/csscomplete.vim] | Updated built-in CSS complete with latest standards
[cakebaker/scss-syntax.vim] | Syntax file for scss (Sassy CSS)
[ap/vim-css-color] | Preview colors in source-code while editing
[plasticboy/vim-markdown] | Markdown syntax highlighting
[rhysd/vim-gfm-syntax] | GitHub Flavored Markdown syntax highlight extension
[pangloss/vim-javascript] | Enhanced Javascript syntax
[othree/jspc.vim] | JavaScript Parameter Complete
[MaxMEllon/vim-jsx-pretty] | React JSX syntax pretty highlighting
[heavenshell/vim-jsdoc] | Generate JSDoc to your JavaScript code
[moll/vim-node] | Superb development with Node.js
[elzr/vim-json] | Better JSON support
[fatih/vim-go] | Go development
[tbastos/vim-lua] | Improved Lua 5.3 syntax and indentation support
[vim-python/python-syntax] | Enhanced version of the original Python syntax
[Vimjas/vim-python-pep8-indent] | A nicer Python indentation style
[python_match.vim] | Extend the % motion for Python files
[tmhedberg/SimpylFold] | No-BS Python code folding
[raimon49/requirements.txt.vim] | Python requirements file format
[StanAngeloff/php.vim] | Up-to-date PHP syntax file (5.3 – 7.1 support)
[shawncplus/phpcomplete.vim] | PHP completion
[osyo-manga/vim-monster] | Ruby code completion
[toyamarinyon/vim-swift] | Swift support
[vim-jp/syntax-vim-ex] | Improved Vim syntax highlighting
[chrisbra/csv.vim] | Handling column separated data
[tmux-plugins/vim-tmux] | vim plugin for tmux.conf
[cespare/vim-toml] | Syntax for TOML
[PotatoesMaster/i3-vim-syntax] | i3 window manager config syntax
[dag/vim-fish] | Fish shell edit support
[ekalinin/Dockerfile.vim] | syntax and snippets for Dockerfile
[jstrater/mpvim] | Macports portfile configuration files
[tpope/vim-git] | Git runtime files
[robbles/logstash.vim] | Highlights logstash configuration files
[andreshazard/vim-logreview] | Bueatify log viewing
[exu/pgsql.vim] | PostgreSQL syntax
[othree/nginx-contrib-vim] | Fork official vim nginx
[IN3D/vim-raml] | Syntax and language settings for RAML

### Commands

Name           | Description
-------------- | ----------------------
[scrooloose/nerdtree] | Tree explorer plugin
[Xuyuanp/nerdtree-git-plugin] | NERDTree plugin for showing git status
[chemzqm/vim-easygit] | Git wrapper focus on simplity and usability
[tpope/vim-commentary] | Code commenting helper
[t9md/vim-choosewin] | Choose window to use, like tmux's 'display-pane'
[Shougo/vinarise.vim] | Hex editor
[kana/vim-niceblock] | Make blockwise Visual mode more useful
[guns/xterm-color-table.vim] | Display 256 xterm colors with their RGB equivalents
[mbbill/undotree] | Ultimate undo history visualizer
[metakirby5/codi.vim] | The interactive scratchpad for hackers
[Shougo/vimproc.vim] | Interactive command execution
[reedes/vim-wordy] | Uncover usage problems in your writing
[brooth/far.vim] | Fast find and replace plugin
[jreybert/vimagit] | Ease your git work-flow within Vim
[easymotion/vim-easymotion] | Vim motions on speed
[majutsushi/tagbar] | Displays tags in a window, ordered by scope
[beloglazov/vim-online-thesaurus] | Look up words in an online thesaurus

### Interface

Name           | Description
-------------- | ----------------------
[haya14busa/vim-asterisk] | Improved * motions
[rhysd/accelerated-jk] | Up/down movement acceleration
[Shougo/tabpagebuffer.vim] | Tabpage buffer interface
[airblade/vim-gitgutter] | Show git changes at Vim gutter and un/stages hunks
[nathanaelkane/vim-indent-guides] | Visually display indent levels in code
[MattesGroeger/vim-bookmarks] | Bookmarks, works independently from vim marks
[rhysd/committia.vim] | Pleasant editing on Git commit messages
[benekastah/neomake] | Asynchronous linting and make framework
[goyo] | Distraction-free writing
[limelight] | Hyperfocus-writing
[itchyny/calendar.vim] | Calendar application
[vimwiki/vimwiki] | Personal Wiki for Vim

### Completion

Name           | Description
-------------- | ----------------------
[Shougo/deoplete.nvim] | Neovim: Dark powered asynchronous completion framework
[Shougo/neocomplete] | Next generation completion framework
[Shougo/neosnippet.vim] | Contains neocomplete snippets source
[Raimondi/delimitMate] | Auto-completion for quotes, parens, brackets
[ludovicchabant/vim-gutentags] | Manages your tag files
[mattn/emmet-vim] | Provides support for expanding abbreviations alá emmet
[Shougo/echodoc.vim] | Print objects' documentation in echo area
[Shougo/neosnippet-snippets] | Standard snippets repository for neosnippet
[davidhalter/jedi-vim] | Python jedi autocompletion library
[zchee/deoplete-go] | deoplete.nvim source for Go
[zchee/deoplete-jedi] | deoplete.nvim source for Python
[carlitux/deoplete-ternjs] | deoplete.nvim source for javascript
[wellle/tmux-complete.vim] | Completion of words in adjacent tmux panes
[ternjs/tern_for_vim] | Provides Tern-based JavaScript editing support

### Denite

Name           | Description
-------------- | ----------------------
[Shougo/denite.nvim] | Dark powered asynchronous unite all interfaces
[nixprime/cpsm] | File matcher, specialized for paths
[chemzqm/unite-location] | Denite location & quickfix lists
[chemzqm/denite-git] | gitlog, gitstatus and gitchanged sources
[rafi/vim-denite-z] | Filter and browse Z (jump around) data file
[rafi/vim-denite-session] | Browse and open sessions
[rafi/vim-denite-mpc] | Denite source for browsing your MPD music library

### Operators & Text Objects

Name           | Description
-------------- | ----------------------
[michaeljsmith/vim-indent-object] | Representing lines of code at the same indent level
[kana/vim-operator-user] | Define your own custom operators
[kana/vim-operator-replace] | Operator to replace text with register content
[rhysd/vim-operator-surround] | Operator to enclose text objects
[haya14busa/vim-operator-flashy] | Highlight yanked area
[kana/vim-textobj-user] | Create your own text objects
[bkad/CamelCaseMotion] | Provide CamelCase motion through words
[terryma/vim-expand-region] | Visually select increasingly larger regions of text
[AndrewRadev/sideways.vim] | Match function arguments
[AndrewRadev/splitjoin.vim] | Transition code between multi-line and single-line
[AndrewRadev/linediff.vim] | Perform diffs on blocks of code
[glts/vim-textobj-comment] | Text objects for comments
[AndrewRadev/dsf.vim] | Delete surrounding function call
[osyo-manga/vim-textobj-multiblock] | Handle bracket objects
[kana/vim-textobj-function] | Text objects for functions

[Shougo/dein.vim]: https://github.com/Shougo/dein.vim
[rafi/awesome-colorschemes]: https://github.com/rafi/awesome-vim-colorschemes
[rafi/vim-badge]: https://github.com/rafi/vim-badge
[itchyny/vim-gitbranch]: https://github.com/itchyny/vim-gitbranch
[itchyny/vim-parenmatch]: https://github.com/itchyny/vim-parenmatch
[thinca/vim-localrc]: https://github.com/thinca/vim-localrc
[christoomey/tmux-navigator]: https://github.com/christoomey/vim-tmux-navigator
[tpope/vim-sleuth]: https://github.com/tpope/vim-sleuth
[itchyny/cursorword]: https://github.com/itchyny/vim-cursorword

[othree/html5.vim]: https://github.com/othree/html5.vim
[mustache/vim-mustache-handlebars]: https://github.com/mustache/vim-mustache-handlebars
[pearofducks/ansible-vim]: https://github.com/pearofducks/ansible-vim
[mitsuhiko/vim-jinja]: https://github.com/mitsuhiko/vim-jinja
[groenewege/vim-less]: https://github.com/groenewege/vim-less
[hail2u/vim-css3-syntax]: https://github.com/hail2u/vim-css3-syntax
[othree/csscomplete.vim]: https://github.com/othree/csscomplete.vim
[cakebaker/scss-syntax.vim]: https://github.com/cakebaker/scss-syntax.vim
[ap/vim-css-color]: https://github.com/ap/vim-css-color
[plasticboy/vim-markdown]: https://github.com/plasticboy/vim-markdown
[rhysd/vim-gfm-syntax]: https://github.com/rhysd/vim-gfm-syntax
[pangloss/vim-javascript]: https://github.com/pangloss/vim-javascript
[othree/jspc.vim]: https://github.com/othree/jspc.vim
[MaxMEllon/vim-jsx-pretty]: https://github.com/MaxMEllon/vim-jsx-pretty
[heavenshell/vim-jsdoc]: https://github.com/heavenshell/vim-jsdoc
[moll/vim-node]: https://github.com/moll/vim-node
[elzr/vim-json]: https://github.com/elzr/vim-json
[fatih/vim-go]: https://github.com/fatih/vim-go
[tbastos/vim-lua]: https://github.com/tbastos/vim-lua
[vim-python/python-syntax]: https://github.com/vim-python/python-syntax
[Vimjas/vim-python-pep8-indent]: https://github.com/Vimjas/vim-python-pep8-indent
[python_match.vim]: https://github.com/vim-scripts/python_match.vim
[tmhedberg/SimpylFold]: https://github.com/tmhedberg/SimpylFold
[raimon49/requirements.txt.vim]: https://github.com/raimon49/requirements.txt.vim
[StanAngeloff/php.vim]: https://github.com/StanAngeloff/php.vim
[shawncplus/phpcomplete.vim]: https://github.com/shawncplus/phpcomplete.vim
[osyo-manga/vim-monster]: https://github.com/osyo-manga/vim-monster
[toyamarinyon/vim-swift]: https://github.com/toyamarinyon/vim-swift
[vim-jp/syntax-vim-ex]: https://github.com/vim-jp/syntax-vim-ex
[chrisbra/csv.vim]: https://github.com/chrisbra/csv.vim
[tmux-plugins/vim-tmux]: https://github.com/tmux-plugins/vim-tmux
[cespare/vim-toml]: https://github.com/cespare/vim-toml
[PotatoesMaster/i3-vim-syntax]: https://github.com/PotatoesMaster/i3-vim-syntax
[dag/vim-fish]: https://github.com/dag/vim-fish
[ekalinin/Dockerfile.vim]: https://github.com/ekalinin/Dockerfile.vim
[jstrater/mpvim]: https://github.com/jstrater/mpvim
[tpope/vim-git]: https://github.com/tpope/vim-git
[robbles/logstash.vim]: https://github.com/robbles/logstash.vim
[andreshazard/vim-logreview]: https://github.com/andreshazard/vim-logreview
[exu/pgsql.vim]: https://github.com/exu/pgsql.vim
[othree/nginx-contrib-vim]: https://github.com/othree/nginx-contrib-vim
[IN3D/vim-raml]: https://github.com/IN3D/vim-raml

[scrooloose/nerdtree]: https://github.com/scrooloose/nerdtree
[Xuyuanp/nerdtree-git-plugin]: https://github.com/Xuyuanp/nerdtree-git-plugin
[chemzqm/vim-easygit]: https://github.com/chemzqm/vim-easygit
[tpope/vim-commentary]: https://github.com/tpope/vim-commentary
[t9md/vim-choosewin]: https://github.com/t9md/vim-choosewin
[Shougo/vinarise.vim]: https://github.com/Shougo/vinarise.vim
[kana/vim-niceblock]: https://github.com/kana/vim-niceblock
[guns/xterm-color-table.vim]: https://github.com/guns/xterm-color-table.vim
[mbbill/undotree]: https://github.com/mbbill/undotree
[metakirby5/codi.vim]: https://github.com/metakirby5/codi.vim
[Shougo/vimproc.vim]: https://github.com/Shougo/vimproc.vim
[reedes/vim-wordy]: https://github.com/reedes/vim-wordy
[brooth/far.vim]: https://github.com/brooth/far.vim
[jreybert/vimagit]: https://github.com/jreybert/vimagit
[easymotion/vim-easymotion]: https://github.com/easymotion/vim-easymotion
[majutsushi/tagbar]: https://github.com/majutsushi/tagbar
[beloglazov/vim-online-thesaurus]: https://github.com/beloglazov/vim-online-thesaurus

[haya14busa/vim-asterisk]: https://github.com/haya14busa/vim-asterisk
[rhysd/accelerated-jk]: https://github.com/rhysd/accelerated-jk
[Shougo/tabpagebuffer.vim]: https://github.com/Shougo/tabpagebuffer.vim
[airblade/vim-gitgutter]: https://github.com/airblade/vim-gitgutter
[nathanaelkane/vim-indent-guides]: https://github.com/nathanaelkane/vim-indent-guides
[MattesGroeger/vim-bookmarks]: https://github.com/MattesGroeger/vim-bookmarks
[rhysd/committia.vim]: https://github.com/rhysd/committia.vim
[benekastah/neomake]: https://github.com/neomake/neomake
[goyo]: https://github.com/junegunn/goyo.vim
[limelight]: https://github.com/junegunn/limelight.vim
[junegunn/vim-peekaboo]: https://github.com/junegunn/vim-peekaboo
[itchyny/calendar.vim]: https://github.com/itchyny/calendar.vim
[vimwiki/vimwiki]: https://github.com/vimwiki/vimwiki

[Shougo/deoplete.nvim]: https://github.com/Shougo/deoplete.nvim
[Shougo/neocomplete]: https://github.com/Shougo/neocomplete.vim
[Shougo/neosnippet.vim]: https://github.com/Shougo/neosnippet.vim
[Raimondi/delimitMate]: https://github.com/Raimondi/delimitMate
[ludovicchabant/vim-gutentags]: https://github.com/ludovicchabant/vim-gutentags
[mattn/emmet-vim]: https://github.com/mattn/emmet-vim
[Shougo/echodoc.vim]: https://github.com/Shougo/echodoc.vim
[Shougo/neosnippet-snippets]: https://github.com/Shougo/neosnippet-snippets
[davidhalter/jedi-vim]: https://github.com/davidhalter/jedi-vim
[zchee/deoplete-go]: https://github.com/zchee/deoplete-go
[zchee/deoplete-jedi]: https://github.com/zchee/deoplete-jedi
[carlitux/deoplete-ternjs]: https://github.com/carlitux/deoplete-ternjs
[wellle/tmux-complete.vim]: https://github.com/wellle/tmux-complete.vim
[ternjs/tern_for_vim]: https://github.com/ternjs/tern_for_vim

[Shougo/denite.nvim]: https://github.com/Shougo/denite.nvim
[nixprime/cpsm]: https://github.com/nixprime/cpsm
[chemzqm/unite-location]: https://github.com/chemzqm/unite-location
[chemzqm/denite-git]: https://github.com/chemzqm/denite-git
[rafi/vim-denite-z]: https://github.com/rafi/vim-denite-z
[rafi/vim-denite-session]: https://github.com/rafi/vim-denite-session
[rafi/vim-denite-mpc]: https://github.com/rafi/vim-denite-mpc

[kana/vim-operator-user]: https://github.com/kana/vim-operator-user
[kana/vim-operator-replace]: https://github.com/kana/vim-operator-replace
[rhysd/vim-operator-surround]: https://github.com/rhysd/vim-operator-surround
[haya14busa/vim-operator-flashy]: https://github.com/haya14busa/vim-operator-flashy
[kana/vim-textobj-user]: https://github.com/kana/vim-textobj-user
[bkad/CamelCaseMotion]: https://github.com/bkad/CamelCaseMotion
[terryma/vim-expand-region]: https://github.com/terryma/vim-expand-region
[AndrewRadev/sideways.vim]: https://github.com/AndrewRadev/sideways.vim
[AndrewRadev/splitjoin.vim]: https://github.com/AndrewRadev/splitjoin.vim
[AndrewRadev/linediff.vim]: https://github.com/AndrewRadev/linediff.vim
[glts/vim-textobj-comment]: https://github.com/glts/vim-textobj-comment
[AndrewRadev/dsf.vim]: https://github.com/AndrewRadev/dsf.vim
[osyo-manga/vim-textobj-multiblock]: https://github.com/osyo-manga/vim-textobj-multiblock
[kana/vim-textobj-function]: https://github.com/kana/vim-textobj-function


----

Constributions are welcome:
```
TODO:
- Snippets for comments, like: https://packagecontrol.io/packages/Comment-Snippets
- React Snippets
- Fold by levels like Atom/Sublime
- Map f9 to :sort
- Ruby string interpolation automatically
- Instal gist-vim
```
