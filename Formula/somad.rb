class Somad < Formula
  desc "Client for streaming SomaFM radio channels"
  homepage "https://github.com/samuelb/somad"
  version "0.15.1"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_darwin_universal"
    # Release automation replaces this placeholder with the published checksum.
    sha256 "23da2b3a60072a9e4495f501745bfefb37519b2dc668de51048683947824ef13"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_arm64"
      sha256 "93caddf2e90909bc569bf882c791232115a57442a065bc880d2daff4ada7789a"
    end
    on_intel do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_amd64"
      sha256 "dce82d1cc088fe7f0ffb196596765a428552627b136226ba377941061b68d408"
    end
  end

  def install
    bin.install Dir["soma_*"].first => "soma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soma --version")
  end
end
