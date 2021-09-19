# neovim-coc
this neovim has coc plugin instead of native lsp configured.

## why not lsp
cause i was not able not configured it perfectly and
it required extra plugins like of 'snippets' ' autocompletion' and many more.
coc does not require such thing just install plugins and
do install anything with ```:CocInstall <extensions>```

One main thing to like about it "Coc is easy to configure inplace of lsp"

## installation
clone this repo first
copy it to ```.config/nvim/```
open nvim and run ```:PackerSync```

## coc plugin overview
coc help in same manner that native lsp does
install different language server protocol(Lsp) like VsCode.

### how to
open you neovim and install any exension with
```:CocInstall <extension>```
example : ```:CocInstall coc-html coc-emmet coc-pyright```

### view available extensions
install coc-marketplace first with
```:CocInstall coc-marketplace```
then see available extension you could install with
```:CocList marketplace```

view installed extensions
```:CocList extensions```

