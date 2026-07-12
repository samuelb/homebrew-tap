cask "whirr" do
  version "0.5.2"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "0fbe90a39c3163d49cb4e1d37b74ff536a24cfa899b9b43142379e846d74abf9"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
