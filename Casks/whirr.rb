cask "whirr" do
  version "0.5.5"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "3d390eea6ddc60f43d356bc53f10155756dffbd34c4da6d586dafd0faec74e84"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
