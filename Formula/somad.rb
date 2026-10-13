class Somad < Formula
  desc "Client for streaming SomaFM radio channels"
  homepage "https://github.com/samuelb/somad"
  version "0.18.0"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_darwin_universal"
    # Release automation replaces this placeholder with the published checksum.
    sha256 "a20390053cc968161b7815a62085455a175d37921f06fb5e4065cd8732b9d6dd"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_arm64"
      sha256 "1f3c26430ba1c2f0f890e75fa91385a97e2e49ea512868e40a2c1fe41ad88c33"
    end
    on_intel do
      url "https://github.com/samuelb/somad/releases/download/v#{version}/soma_linux_amd64"
      sha256 "4675443ebba46bb619b43fbe9e3be8b9a014e0266ec759a26ae884a4facd5d69"
    end
  end

  def install
    bin.install Dir["soma_*"].first => "soma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soma --version")
  end
end
