cask "whirr" do
  version "0.6.0"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "16e080fa3aebe8ee655f8f4c1d48e939ac109e61f1168072df25b28fdbc27bbb"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3/AAC) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
