# ZSH Alias Finder

Simple ZSH plugin that will display an alias when you use a command you have aliased previously. Helpful for remembering aliases you have defined in the past.

Written as a pure ZSH script for speed. Extremely simple (directly looks up command in zsh `alias` association array).

```console
akash329d:~$ ls -aF
💡 Alias Tip: la
./  ../  .git/  zsh-alias-finder.plugin.zsh
```

## Customization

| Variable                 | Description                                                         | Default          |
| ------------------------ | ------------------------------------------------------------------- | ---------------- |
| ZSH_ALIAS_FINDER_PREFIX  | Prefix used for aliased command display                             | `💡 Alias Tip: ` |
| ZSH_ALIAS_FINDER_SUFFIX  | Suffix used for aliased command display (is displayed before alias) | `%F{green}`      |
| ZSH_ALIAS_FINDER_IGNORED | Comma delimited string of ignored aliases                           | `''`             |

Tip is displayed using [ZSH prompt expansion](https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html), so can use any supported visual effects.

## Installation

### Zinit

1. Add the following to your `.zshrc`:

   ```sh
   zinit light akash329d/zsh-alias-finder
   ```

2. Start a new terminal session.

### Antigen

1. Add the following to your `.zshrc`:

   ```sh
   antigen bundle akash329d/zsh-alias-finder
   ```

2. Start a new terminal session.

### Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

   ```console
   git clone https://github.com/akash329d/zsh-alias-finder ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-alias-finder
   ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

   ```sh
   plugins=(
       # other plugins...
       zsh-alias-finder
   )
   ```

3. Start a new terminal session.

### Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-alias-finder`.

   ```sh
   git clone https://github.com/akash329d/zsh-alias-finder ~/.zsh/zsh-alias-finder
   ```

2. Add the following to your `.zshrc`:

   ```sh
   source ~/.zsh/zsh-alias-finder/zsh-alias-finder.plugin.zsh
   ```

3. Start a new terminal session.
