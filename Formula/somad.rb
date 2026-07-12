class Somad < Formula
  desc "Client for streaming SomaFM radio channels"
  homepage "https://github.com/samuelb/somad"
  version "0.13.0"
  license "MIT"

  on_macos do
    url "https://github.com/samuelb/somad/releases/download/v0.13.0/soma_darwin_universal"
    sha256 "b17657e01dda2af15fea917d2ad63d47c05a739df10c56ff5953731a7356d7c5"
  end

  on_linux do
    on_arm do
      url "https://github.com/samuelb/somad/releases/download/v0.13.0/soma_linux_arm64"
      sha256 "3333a6422d1b16ea8f2de128326f4e7299e1d100f57c471722725665b053b310"
    end
    on_intel do
      url "https://github.com/samuelb/somad/releases/download/v0.13.0/soma_linux_amd64"
      sha256 "d29cffc41f28f80de5d456f08ab41f179710d82743348ba62b51f7107c3f950a"
    end
  end

  def install
    bin.install Dir["soma_*"].first => "soma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soma --version")
  end
end
