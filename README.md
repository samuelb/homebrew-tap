# homebrew-tap

A personal [Homebrew](https://brew.sh) tap.

## [Whirr](https://github.com/samuelb/whirr)

A tiny system-tray player for internet radio (MP3) streams.

```bash
brew install --cask samuelb/tap/whirr
```

That is shorthand for:

```bash
brew tap samuelb/tap
brew install --cask whirr
```

Upgrade with `brew upgrade --cask whirr`, uninstall with `brew uninstall --cask whirr`.

`Casks/whirr.rb` is updated automatically by the
[Whirr release workflow](https://github.com/samuelb/whirr/blob/main/.github/workflows/release.yml)
on every tagged release — no manual edits needed.
