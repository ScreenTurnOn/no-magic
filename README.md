# No Magic

This is a simple approach to managing your configuration.

## Nix Profile

No magic. No Home Manager. No direnv.

```
  nix profile install .#noMagic
```

Now you have GNU Stow, Helix and Jujutsu available in your PATH.

## GNU Stow

This tool is a symlink farm. Here's how to use it with this repo.

```
  stow --dotfiles --target "$HOME" helix
  stow --dotfiles --target "$HOME" jj-vcs
```

Now your configuration is symlinked to `~/.config/helix/config.toml` and `~/.config/jj/config.toml`.
