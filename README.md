# homebrew-whirr

A [Homebrew](https://brew.sh) tap for [Whirr](https://github.com/samuelb/whirr) —
a tiny system-tray player for internet radio (MP3) streams.

## Install

```bash
brew install --cask samuelb/whirr/whirr
```

That is shorthand for:

```bash
brew tap samuelb/whirr
brew install --cask whirr
```

## Upgrade

```bash
brew upgrade --cask whirr
```

## Uninstall

```bash
brew uninstall --cask whirr
```

## Maintenance

`Casks/whirr.rb` is updated automatically by the
[Whirr release workflow](https://github.com/samuelb/whirr/blob/main/.github/workflows/release.yml)
on every tagged release — no manual edits needed.
