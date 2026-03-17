class Workspacer < Formula
  desc "CLI tool for managing related git worktrees in a workspace"
  homepage "https://github.com/seakayone/workspacer"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a7ab2f3263046715c9a6de06cb1519320917fa0445fed3fe7dedbd5eaca7f7a"
    else
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "af00788ea7adb244914daf0909657bab69a7f24552a0cea5361a792ecbc19ecb"
    end
  end

  on_linux do
    url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "79e19c1d6893a2e00e4a7893873cb74baa61d4802b38387c32d1dc3538452111"
  end

  def install
    bin.install "ws"
  end

  test do
    assert_match "ws", shell_output("#{bin}/ws --help")
  end
end
