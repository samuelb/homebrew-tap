cask "whirr" do
  version "0.5.3"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "d75f57d0473eba2f7cec5c9820b9f7430bbf7dce3dead52d1d4fc715904fadbe"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
