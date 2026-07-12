cask "whirr" do
  version "0.5.1"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "17516fc1bc78797b381785cde6a8df469040b84fffc0d1903900f00d528824ee"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
