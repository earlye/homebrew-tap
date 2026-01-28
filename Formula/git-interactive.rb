class GitInteractive < Formula
  desc "Extensible interactive Git TUI"
  homepage "https://github.com/earlye/git-interactive"
  license "MIT"
  version "0.1.11+91250c3"

  on_macos do
    on_arm do
      url "https://github.com/earlye/git-interactive/releases/download/v0.1.11+91250c3/git-interactive-darwin-arm64-v0.1.11+91250c3.tar.gz"
      sha256 "cf4ae4c31eb5faf2b5bed34d3bc51cc6208d2a877b20c2b1d1774e3fe81bd25f"
    end
    on_intel do
      url "https://github.com/earlye/git-interactive/releases/download/v0.1.11+91250c3/git-interactive-darwin-x86_64-v0.1.11+91250c3.tar.gz"
      sha256 "7a38462cb2b30f4cfa98f3970fb9603fbf9b99ed056d786a17bd76f04138988a"
    end
  end

  def install
    bin.install "git-interactive"
    bin.install "git-interactive-signing-key"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/git-interactive 2>&1", 1)
  end
end
