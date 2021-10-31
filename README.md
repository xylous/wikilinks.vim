# wikilinks.vim 0.2.0

Have you ever wanted a Vim plugin to follow Vimwiki-style links (e.g.
`[[Programming Ideas]]`) without Vimwiki? Well then, this is the perfect plugin
for you.

**NOTE**: it only works inside Markdown files... for now.

## Getting started

### Requirements

- Vim or NeoVim. I've only tested it with NVIM v0.5.1, but it should work with
earlier versions as well.

### Installation

Make sure you have the following setting in your vimrc:

```vim
filetype plugin on
```

#### Using Pathogen

```
cd ~/.vim
mkdir bundle
cd bundle
git clone https://github.com/xylous/wikilinks.vim.git
```

#### Using Vim-Plug

Add the following line to your vimrc:

```
Plug 'xylous/wikilinks.vim'
```

And then run `:PlugInstall`

#### Using Vundle

Add the following line to your vimrc:

```
Plugin 'xylous/wikilinks.vim'
```

And then run `vim +PluginInstall +qall` in a shell.

### Usage

[Check the vim-help document](./doc/wikilinks.vim.txt).

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.
