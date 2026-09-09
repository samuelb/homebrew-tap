class Whirr < Formula
  desc "System-tray player for internet radio (MP3/AAC) streams"
  homepage "https://github.com/samuelb/whirr"
  version "0.6.1"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos-universal.tar.gz"
    # Release automation replaces these placeholders with the published checksums.
    sha256 "d4cee80b78d7153e1f55188c83ae9b41ef582af460f2b4ae85ca4990e7606ecc"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-arm64.tar.gz"
      sha256 "c1e96072b1763ace0bd848ee354cf7bd1e4801afcb0163d234cb629b4e35270b"
    end
    on_intel do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-amd64.tar.gz"
      sha256 "d4471db9108320f8a55353958df3747142a596abee52ac3b7b2f422c7ef02cba"
    end
  end

  def install
    bin.install "whirr"
  end
end
