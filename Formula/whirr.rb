class Whirr < Formula
  desc "System-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"
  version "0.5.3"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos-universal.tar.gz"
    # Release automation replaces these placeholders with the published checksums.
    sha256 "95054c7ab9bd261c1247cefc3badebdf6b5e9ebc933ba1104cbb06780f911a43"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-arm64.tar.gz"
      sha256 "0a1588958505df3425e153c0d97b1f52c72ae08e03d6ea7ef926edaf64655629"
    end
    on_intel do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-amd64.tar.gz"
      sha256 "9850090d4ac7f7f362942cef90f7fb831bf2959389aabc0815875035e99fada8"
    end
  end

  def install
    bin.install "whirr"
  end
end
