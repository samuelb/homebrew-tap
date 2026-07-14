class Whirr < Formula
  desc "System-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"
  version "0.5.5"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos-universal.tar.gz"
    # Release automation replaces these placeholders with the published checksums.
    sha256 "53d98caa2ec09418ac7f3ad4bdc1828fc524a5f4e2aa14a327aa8d961ca7b135"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-arm64.tar.gz"
      sha256 "1b15237191c7da8e721f328cdf00892de67769bd8f111e5323bfee56afb10110"
    end
    on_intel do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-amd64.tar.gz"
      sha256 "efd4d15bc6e0480f22bba28ad17f7101360c4f2d7d20dcbea8d800bfe7d22c2f"
    end
  end

  def install
    bin.install "whirr"
  end
end
