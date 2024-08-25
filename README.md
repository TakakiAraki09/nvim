# nvim


## quick start

### nvimをインストールする

- [nvim](https://github.com/neovim/neovim/releases/latest)

### このリポジトリを取得する

// Unix, Linux, Mac

```sh
$ git clone https://github.com/TakakiAraki09/nvim ~/.config/nvim
```

// windows

```sh
$ git clone https://github.com/TakakiAraki09/nvim ~/AppData/Local/nvim
```
### packerをインストールする

// Unix, Linux, Mac

```sh
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

// windows

```powershell
$ git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

### VIMにプラグインをインストールする

```vim
:PackerSync
```
