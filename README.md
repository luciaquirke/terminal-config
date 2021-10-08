# terminal-config
### Terminal setup with Oh My Zsh


Install Oh My Zsh via curl:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install pure theme via npm:

```
npm install --global pure-prompt
```

zsh-autosuggestions and zsh-syntax-highlighting can be installed via homebrew, but oh-my-zsh will not check homebrew for the plugins so doing this necessitates further configuration. Instead, I manually clone the plugins to the folder oh-my-zsh checks:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

This repo's Zsh settings file *.zshrc* may then be used.

### Problems I've Had

#### Zsh error 

``` 
Insecure completion-dependent directories detected:
drwxrwxr-x  7 name  admin  224 date /usr/local/share/zsh
drwxrwxr-x  4 name  admin  128 date /usr/local/share/zsh/site-functions
```

Solved by changing the ownership of the directories:

```
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions
```

#### Python virtual environment indicator not showing in prompt

Solved by navigating to the virtualenv plugin config file

```
vim ~/.oh-my-zsh/plugins/virtualenv/virtualenv.plugin.zsh
```

And commenting out the line

```
export VIRTUAL_ENV_DISABLE_PROMPT=1
```

I think this plugin might come with oh-my-zsh by default or something because I don't recall ever installing the virtualenv plugin.

#### Need to install brew in a multi-user setup

You can follow [this guide](https://stackoverflow.com/a/55021458) - you basically need to install homebrew somewhere on your local account then update your $PATH to point to its location. Run `echo $PATH` to check that the first path matches the path of your homebrew installation.


