cask "whirr" do
  version "0.6.1"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "d2d97bac78437e4d6d4e77c72534aaba9ada10af2d19c0d35341697abac40f13"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3/AAC) streams"
  homepage "https://github.com/samuelb/whirr"

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
