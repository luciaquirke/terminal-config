# terminal-config
#### My terminal setup with Hyper and Oh My Zsh

Install Oh My Zsh via curl:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install pure theme via npm:

```
npm install --global pure-prompt
```

zsh-autosuggestions and zsh-syntax-highlighting can be installed via homebrew, but oh-my-zsh will not check homebrew for the plugins so doing this necessitates further configuration. Instead, I manually clone the plugins to the folder checked by oh-my-zsh:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

This repo's ZSH settings file *.zshrc* may then be used.

Hyper may be added via website:

https://hyper.is/#installation

This repo's Hyper settings file may then be used.
