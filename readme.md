# VKO vim configuration

Advanced VIM Configuration for FullStack Developers, for now it's supporting.
- Backend: Ruby on Rails, Python and Elixir.
- Front-end: React
- Ops: Docker, Nginx, Ansible.

Only tested with Neovim.

## Leaders
| key       | Description |
| -         | -           |
| `<space>` | leader      |
| `;`       | FuzzyFinder |
| `,`       | Files       |
| `s`       | Windows     |
| `t`       | Tabs        |
| `z`       | Foldings    |
| `m`       | Bookmarks    |

## Miscellaneous
| key           | Mode          | Action                                       |
| -             | -             | -                                            |
| `Reload`      | command       | Reload vimrc                                 |
| `<Leader>a`   | normal        | Align paragraph                              |
| `<Leader>,`   | normal        | Remove all spaces EOL                        |
| `<Leader>ow`  | normal        | Overwrite word                               |
| `<Leader>saw` | normal/visual | Replace all occurences under cursor          |
| `<Leader>w`   | normal        | Save current file                            |
| `!`           | normal        | Start an external command with a single bang |
| `s`           | visual        | Replace within selected area                 |
| `gp`          | normal        | Select last paste                            |
| `Y`           | normal        | Copy until the end of line                   |
| `q`           | normal        | Quit                                         |
| `g;`          | visual        | Jump to last edited location                 |
| `g,`          | visual        | Jump to next edited location                 |
| `<Ctrl>r`     | insert        | Open resgister content                       |
| `gc<motion>`  | normal/visual | Toggle comments                              |
| `/`           | normal        | Easy motion                                  |
| `W!!`         | command       | Save with sudo                               |
| `<Leader>d`   | Normal/Visual | Duplicate line/selected                      |

## Windows
| key                | Mode   | Action                  |
| -                  | -      | -                       |
| `<Window>v`        | normal | Split tab horizontaly   |
| `<Window>g`        | normal | Split tab verticaly     |
| `<Window>c`        | normal | Close                   |
| `<Window>co`       | normal | Close other             |
| `<Window>b`        | normal | Back to previous buffer |
| `<Window>r`        | normal | Rotate                  |
| `<Window>z`        | normal | Zoom toggle             |
| `Arrows`           | normal | Resize                  |

## Tabs
| key       | Mode   | Action       |
| -         | -      | -            |
| `<Tabs>t` | normal | Open new tab |
| `<Tabs>l` | normal | Next tab     |
| `<Tabs>h` | normal | Prev tab     |

## Files
| key         | Mode   | Action                                |
| -           | -      | -                                     |
| `<Files>du` | normal | Duplicate current file                |
| `<Files>de` | normal | Delete current file                   |
| `<Files>m`  | normal | Move/Rename current file              |
| `<Files>y`  | normal | Copy file-path to clipboard(relative) |
| `<Files>Y`  | normal | Copy file-path to clipboard(absolute) |

## FuzzyFinder
| key              | Mode   | Action                |
| -                | -      | -                     |
| `<FuzzyFinder>f` | normal | Files                 |
| `<FuzzyFinder>w` | normal | Opened Windows        |
| `<FuzzyFinder>g` | normal | Search text all       |
| `<FuzzyFinder>t` | normal | Tags                  |
| `<FuzzyFinder>T` | normal | Tags(Current Buffer)  |
| `<FuzzyFinder>c` | normal | Commits(current file) |
| `<FuzzyFinder>b` | normal | Buffers               |
| `<FuzzyFinder>/` | normal | Lines(current buffer) |
| `<FuzzyFinder>m` | normal | Marks                 |

## Sidebar
| key        | Mode     | Action                               |
| -          | -        | -                                    |
| `<Files>e` | normal   | Toggle file explorer                 |
| `<Files>a` | normal   | Toggle file explorer on current file |
| `w`        | NerdTree | Toggle window size                   |
| `N`        | NerdTree | Create new file or directy           |

## Find and Replace(Far)
| key                        | Mode    | Action                            |
| -                          | -       | -                                 |
| `:Far <from> <to> <files>` | command | Open "find & replace" console     |
| `t`                        | Far     | Toggle the match above the cursor |
| `:Fardo`                   | Far     | Do the replacement                |
| `:F <pattern>`             | command | find all                          |

## Ctags
| key       | Mode   | Action           |
| -         | -      | -                |
| `<ctrl>]` | normal | Go to definition |
| `UpdateTags` | command | UpdateTags |

## Multiple Cursor
| key       | Mode   | Action                |
| -         | -      | -                     |
| `<ctrl>n` | normal | select next occurence |
| `<ctrl>p` | normal | Undo Selection        |
| `<ctrl>x` | normal | Skip current          |

## Bookmarks
| key            | Mode   | Action                           |
| -              | -      | -                                |
| `<Bookmarks>m` | normal | Toggle bookmarks in current line |
| `<Bookmarks>n` | normal | Jump to next bookmark            |
| `<Bookmarks>p` | normal | Jump to prev bookmark            |
| `<Bookmarks>a` | normal | show list of all bookmarks       |
| `<Bookmarks>x` | normal | remove all bookmarks             |

## Foldings
| key             | Mode   | Action                                            |
| -               | -      | -                                                 |
| `<Foldings>a`   | normal | toggle fold current level                         |
| `<Foldings>r`   | normal | Recues folding by opening one more level of folds |
| `<Foldings>R`   | normal | Open all folds                                    |
| `<Foldings>Mza` | normal | Close the others                                  |

## Git
| key | Mode | Action |
|-|-|-|

## Snippets
| key         | Mode   | Action               |
| -           | -      | -                    |
| `<leader>s` | normal | create a new snippet |

## Tabularize
| key          | Mode          | Action               |
| -            | -             | -                    |
| `<leader>tt` | normal/visual | tabularize by custom |
| `<leader>t=` | normal/visual | tabularize by =      |
| `<leader>t:` | normal/visual | tabularize by :      |

## Text Objects
| key   | Mode   | Action            |
| -     | -      | -                 |
| `e`   | normal | entire file       |
| `_`   | normal | underscore        |
| `r`   | normal | ruby block        |
| `=/-` | normal | erb               |
| `i`   | normal | indentation level |
| `f`   | normal | function          |

# Languages/Frameworks

## Ruby
| Key              | Mode   | Action                                                |
| -                | -      | -                                                     |
| `,#`             | normal | ruby string interpolation #{}                         |
| `]m`             | normal | To edit start of next method definition               |
| `]M`             | normal | To go to end of next method definition                |
| `[m`             | normal | To start of previous method definition                |
| `[M`             | normal | To end of previous method definition                  |
| `<Learder>rap`   | normal | Add params to method                                  |
| `<Learder>rit`   | normal | Remove declaration of the variable and use the result |
| `<Learder>rcpc`  | normal | From if one line to multiline                         |
| `<Learder>rec`   | normal | Extract Constant                                      |
| `<Learder>rel`   | normal | Extract let                                           |
| `<Learder>relv`  | normal | To local variable                                     |
| `<Learder>rrlv`  | normal | Rename local variable                                 |
| `<Learder>rriv`  | normal | Rename instance variable

### Ruby On Rails
| key   | Mode    | Action                  |
| -     | -       | -                       |
| `gf`  | normal  | goto                    |
| `:A`  | command | Alternate file          |
| `:AS` | command | Alternate file in split |
| `:R`  | command | Related file            |
| `:RS` | command | Related file in split   |

## Elixir
| key            | Mode    | Action                                                              |
|-|-|-|

## Python
| key            | Mode    | Action                                                              |
|-|-|-|

### Flask
| key | Mode | Action |
|-|-|-|

## Javascript
| key            | Mode    | Action                                                              |
| -              | -       | -                                                                   |
| `:ImportJSFix` | command | Import any missing modules and remove any modules that are not used |
| `:JsDoc`       | command | Generate JSDoc for the function

### React
| key | Mode | Action |
|-|-|-|

## CSS
| key            | Mode    | Action                                                              |
|-|-|-|

## HTML/JSX
| key          | Mode    | Action                                |
| -            | -       | -                                     |
| `Ctrl+y + ,` | command | Expand emmet sequence                 |
| `Ctrl+y + ,` | visual  | Wrap selected tag with emmet sequence |
| `<c-y>d`     | insert  | Balance a Tag Inward                  |
| `<c-y>D`     | insert  | Balance a Tag Outward                 |
| `<c-y>n`     | insert  | Go to the Next Edit Point             |
| `<c-y>N`     | insert  | Go to the Previous Edit Point         |

