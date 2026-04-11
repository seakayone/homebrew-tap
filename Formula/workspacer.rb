class Workspacer < Formula
  desc "CLI tool for managing related git worktrees in a workspace"
  homepage "https://github.com/seakayone/workspacer"
  license "Apache-2.0"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seakayone/workspacer/releases/download/v0.2.2/workspacer-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "dd7841817ca43c3ace31643a39a3e68220b1e0c4676e0562e8845e2046664421"
    else
      url "https://github.com/seakayone/workspacer/releases/download/v0.2.2/workspacer-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "9734867ac15fa8d9c6d22f49d123df183b38b85ce872b02d326e5c5085826433"
    end
  end

  on_linux do
    url "https://github.com/seakayone/workspacer/releases/download/v0.2.2/workspacer-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c1aa6d2cd461a9846075134b01c2c5801378306656e411be07b5a9b4dcd131f1"
  end

  def install
    bin.install "ws"
  end

  test do
    assert_match "ws", shell_output("#{bin}/ws --help")
  end
end
