class Workspacer < Formula
  desc "CLI tool for managing related git worktrees in a workspace"
  homepage "https://github.com/seakayone/workspacer"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "ws"
  end

  test do
    assert_match "ws", shell_output("#{bin}/ws --help")
  end
end
