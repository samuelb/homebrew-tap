class Somad < Formula
  desc "Client for streaming SomaFM radio channels"
  homepage "https://github.com/samuelb/somad"
  version "0.15.0"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_darwin_universal"
    # Release automation replaces this placeholder with the published checksum.
    sha256 "a39265973abb36e605a872a34b64b23c962ff33cb48e6317c4aed5ed7515a159"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_arm64"
      sha256 "9d06969b663ea11e72d62a7faab63e27c27a0446c5374942a36c7e683500d6e6"
    end
    on_intel do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_amd64"
      sha256 "994482c3cf0aefd85bc84d39f743796e912ae1bad75437a503755055ad26a493"
    end
  end

  def install
    bin.install Dir["soma_*"].first => "soma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soma --version")
  end
end
