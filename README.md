This is a mirror of http://www.vim.org/scripts/script.php?script_id=2746

# Installation

```
    Plug 'skywind3000/asyncrun.vim'
    Plug 'dangkhoasdc/nuweb-multi-language'
```

# Options

- `g:vimnuweb_enabled`: enable the plugin. Default: 1
- `g:vimnuweb_mappings`: enable the default mappings:
    * `F9`: build the TeX file from the current buffer.
    * `F10`: build the source code from the current buffer.

# Mappings

To customize the mappings:

```
" map F1 to building source files
map <F1> <Plug>Nuweb_BuildSourceFiles
" map F2 to compil the TeX file
map <F2> <Plug>Nuweb_BuildTeXFile
```
