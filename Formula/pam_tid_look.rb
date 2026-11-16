# Homebrew formula for pam_tid_look, published in the tap samuelb/tap:
#
#   brew install samuelb/tap/pam_tid_look
#
# The url and sha256 here stand in for a release's. For each tag vX.Y.Z, the
# release workflow (.github/workflows/release.yml) sets them to that tag's
# source archive with scripts/render_formula.sh and pushes the result to
# https://github.com/samuelb/homebrew-tap. Edit the formula here: each release
# overwrites the tap's copy.
#
# Homebrew only puts the files in place. `sudo pam_tid_look install` then
# copies the module to /Library/Security/pam_tid_look, because PAM must never
# load a module from Homebrew's prefix: it is writable by the user, and
# upgrades, cleanup and uninstalling delete files from it, which would stop
# sudo from starting.
class PamTidLook < Formula
  desc "Touch ID for sudo that shows the command in the dialog"
  homepage "https://github.com/samuelb/pam_tid_look"
  url "https://github.com/samuelb/pam_tid_look/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c5f18b54461fb70d40e1d8082033a41bc6fc793cab63abf6a61e4007f13e5e1e"
  license "MIT"
  head "https://github.com/samuelb/pam_tid_look.git", branch: "main"

  depends_on :macos

  on_macos do
    depends_on macos: :sonoma # /etc/pam.d/sudo_local
  end

  def install
    # The module and the probe are built for arm64e, arm64 and x86_64: sudo is
    # arm64e on Apple silicon.
    ENV.permit_arch_flags
    system "make"
    (libexec/"pam_tid_look").install "build/pam_tid_look.so", "build/pam_tid_look_probe", "build/pam_tid_look"
    bin.install_symlink libexec/"pam_tid_look/pam_tid_look"
  end

  def caveats
    <<~EOS
      sudo is unchanged so far. To use the module for sudo, run:
        sudo #{opt_bin}/pam_tid_look install
      It shows the change to /etc/pam.d/sudo_local and asks before it makes it;
      --yes answers yes in advance. Then it asks you to approve a Touch ID
      dialog, and keeps the module only if that works.

      Run the same command after `brew upgrade pam_tid_look` to update the module sudo uses.
      Before `brew uninstall pam_tid_look`, run:
        sudo #{opt_bin}/pam_tid_look uninstall
      It asks the same way.

      If sudo ever stops starting ("unable to initialize PAM"), run this, without sudo:
        /Library/Security/pam_tid_look/pam_tid_look rescue
      If it starts but crashes or hangs while it authenticates you, add --force.
    EOS
  end

  test do
    system libexec/"pam_tid_look/pam_tid_look_probe", "module", libexec/"pam_tid_look/pam_tid_look.so"
    assert_match "usage:", shell_output("#{bin}/pam_tid_look 2>&1", 2)
  end
end
