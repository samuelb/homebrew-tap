class Whirr < Formula
  desc "System-tray player for internet radio (MP3) streams"
  homepage "https://github.com/samuelb/whirr"
  version "0.5.4"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-macos-universal.tar.gz"
    # Release automation replaces these placeholders with the published checksums.
    sha256 "07f42a90a118e424ffa201c6991a10727d4c6f7bf91801ae12cc439601baa1f9"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-arm64.tar.gz"
      sha256 "a6ac76ee307d843ec057e6a7b5160753950690ad754fe55257a8f0a894d054dd"
    end
    on_intel do
      url "https://github.com/samuelb/whirr/releases/download/v#{version}/whirr-linux-amd64.tar.gz"
      sha256 "06649b9abb472d91fed167e9aee89edd689b616b52b1c4491a56f3c10747a579"
    end
  end

  def install
    bin.install "whirr"
  end
end
