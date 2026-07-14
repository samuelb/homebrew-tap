class Whirr < Formula
  desc "System-tray player for internet radio (MP3/AAC) streams"
  homepage "https://github.com/samuelb/whirr"
  version "0.6.0"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos-universal.tar.gz"
    # Release automation replaces these placeholders with the published checksums.
    sha256 "05d9f931c2be5a1b4196d15f9837655b8caedb3d5aa3b09ebca91eaf8567a48f"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-arm64.tar.gz"
      sha256 "74e8aede92fcdfb0ace311755243a2a45c066320200bc5532c0c60609a6be58f"
    end
    on_intel do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-amd64.tar.gz"
      sha256 "a72117ac7bc82c7426d898ded005a4201b3b83469645b61b120bd5e0f3d75670"
    end
  end

  def install
    bin.install "whirr"
  end
end
