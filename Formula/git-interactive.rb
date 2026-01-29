class GitInteractive < Formula
  desc "Extensible interactive Git TUI"
  homepage "https://github.com/earlye/git-interactive"
  license "MIT"
  version "0.1.12+3e4d2e1"

  on_macos do
    on_arm do
      url "https://github.com/earlye/git-interactive/releases/download/v0.1.12+3e4d2e1/git-interactive-darwin-arm64-v0.1.12+3e4d2e1.tar.gz"
      sha256 "3b324628bee37cfe5dd4639615d8ff614dbcf5804a6b0f412e340e3b9dc68ff0"
    end
    on_intel do
      url "https://github.com/earlye/git-interactive/releases/download/v0.1.12+3e4d2e1/git-interactive-darwin-x86_64-v0.1.12+3e4d2e1.tar.gz"
      sha256 "eec0ca5ed57a6929b8f780aa163c6c3c1a9c0848e3979a10dc7180faa22a7d5b"
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
