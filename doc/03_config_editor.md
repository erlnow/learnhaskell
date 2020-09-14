## Configure your editor

I use [neovim](https://neovim.io/) as my editor for everything.  NeoVim or,
just, nvim is a hyper-extensible vim-based text editor.

[coc.nvim](https://github.com/neoclide/coc.nvim) is a *Language Server
Protocol* plugin for vim and nvim. Read the `README` to install and configure.

[haskell-language-server](https://github.com/haskell/haskell-language-server)
is the new *Haskell Language Server* for `coc.nvim`. With this plugin we can
have code evaluation, type information and documentation on hover, etc.

I use `implicit-hie` for generate `hie.yaml` needed for Haskell Language Server
know what GHC version need.  To install clone the
[repository](https://github.com/Avi-D-coder/implicit-hie) and `stack install`
to build and move executable to the path.

For Git I use the plugin [vim-fugitive](https://github.com/tpope/vim-fugitive).

I use other plugins for nvim.

For example, for `markdown` configuration read
https://www.swamphogg.com/2015/vim-setup/
