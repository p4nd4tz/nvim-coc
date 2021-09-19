# neovim-coc
This neovim has coc plugin instead of native lsp configured.
And configured in lua programming language.

## why not lsp
cause i was not able not configured it perfectly and
it required extra plugins like of 'snippets', ' autocompletion' and many more.
Coc does not require such thing just install plugins and
do install anything with
```
:CocInstall <extensions>
```

One main thing to like about it "Coc is easy to configure inplace of lsp"

## installation
Clone this repo first.
```
git clone https://github.com/Abhishek416/nvim-coc.git
```

Copy it to ```.config/nvim/```
open nvim and run ```:PackerSync```

## coc plugin overview
Coc help in same manner that native lsp does
install different language server protocol(Lsp) like VsCode.

### how to exensions
Open you neovim and install any exension with
```
:CocInstall <extension>
```
Example : ```:CocInstall coc-html coc-emmet coc-pyright```

### view available extensions
Install coc-marketplace first with
```
:CocInstall coc-marketplace
```

Then see available extension you could install with
```
:CocList marketplace
```

view installed extensions
```
:CocList extensions
```

