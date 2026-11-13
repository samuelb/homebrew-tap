class Somad < Formula
  desc "Client for streaming SomaFM radio channels"
  homepage "https://github.com/samuelb/somad"
  version "0.20.0"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_darwin_universal"
    # Release automation replaces this placeholder with the published checksum.
    sha256 "bdded3669bb90e1870b84a023ee4575ab4261632663b7487607a0b3b374dca71"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_arm64"
      sha256 "5176767920d05d882923d48f080892fc64bd970c570b50d6648d59fd82d187a9"
    end
    on_intel do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_amd64"
      sha256 "267f003a2f8026bc3f456ebf31d3681c98e66d8b6c4d7a6c1eb8f4c193e43048"
    end
  end

  def install
    bin.install Dir["soma_*"].first => "soma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soma --version")
  end
end
