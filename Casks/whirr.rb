cask "whirr" do
  version "0.5.4"
  # Release automation replaces this placeholder with the published .dmg checksum.
  sha256 "8c902931831c514f6e3bb8f8e90651e83213916923fa7368b7f5b569e5c2fdbb"

  url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos.dmg"
  name "Whirr"
  desc "Tiny system-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"

  depends_on macos: :catalina

  app "Whirr.app"

  # Whirr keeps its config in a plain "whirr" directory (see src/config.rs).
  zap trash: "~/Library/Application Support/whirr"
end
