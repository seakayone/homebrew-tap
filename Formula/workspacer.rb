class Workspacer < Formula
  desc "CLI tool for managing related git worktrees in a workspace"
  homepage "https://github.com/seakayone/workspacer"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seakayone/workspacer/releases/download/v0.2.0/workspacer-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "43ec1a088a5c61dcf759ed268de0fa5501e10ada8bece3866d4c8ca8654fd8bd"
    else
      url "https://github.com/seakayone/workspacer/releases/download/v0.2.0/workspacer-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b5215b1df7aac02b955d6de5df3f7639d6db7756f0429cf533ac7914f87dd35f"
    end
  end

  on_linux do
    url "https://github.com/seakayone/workspacer/releases/download/v0.2.0/workspacer-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ce24e08bbeaaa6a5759d1cce8d8657c6d826d86da4e853e5b62f1041017eaf47"
  end

  def install
    bin.install "ws"
  end

  test do
    assert_match "ws", shell_output("#{bin}/ws --help")
  end
end
