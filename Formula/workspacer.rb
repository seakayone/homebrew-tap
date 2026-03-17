class Workspacer < Formula
  desc "CLI tool for managing related git worktrees in a workspace"
  homepage "https://github.com/seakayone/workspacer"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "717070151f5bff316548bed81c2d582cca80e6f60c96fb3bd54866b54b98a54a"
    else
      url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c61c96d5dc4a0a7efb49e1ae89958d5cee2173a1dc5dccaf6d9750e92434eaae"
    end
  end

  on_linux do
    url "https://github.com/seakayone/workspacer/releases/download/v0.1.0/workspacer-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8f1a94f1d005267b0ad470af25938786522786f69d344a4c75257714ce724fa"
  end

  def install
    bin.install "ws"
  end

  test do
    assert_match "ws", shell_output("#{bin}/ws --help")
  end
end
