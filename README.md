# homebrew-tap

[Homebrew](https://brew.sh) tap for my apps.

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

## [Somad](https://github.com/samuelb/somad)

A client for streaming and exploring SomaFM radio channels.

```bash
brew install samuelb/tap/somad
```

That is shorthand for:

```bash
brew tap samuelb/tap
brew install somad
```

Upgrade with `brew upgrade somad`, uninstall with `brew uninstall somad`.

`Formula/somad.rb` is updated automatically by the
[Somad release workflow](https://github.com/samuelb/somad/blob/main/.github/workflows/release.yml)
on every tagged release — no manual edits needed.
