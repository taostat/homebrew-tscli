class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0cec5cddf2a2f304200f104ef9bab1766da178f7/tscli-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0cec5cddf2a2f304200f104ef9bab1766da178f7/tscli-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0cec5cddf2a2f304200f104ef9bab1766da178f7/tscli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0cec5cddf2a2f304200f104ef9bab1766da178f7/tscli-x86_64-pc-windows-msvc.tar.gz"
    sha256 "EE1595EB34E43C70FC7592E5FB584817789CE3DC7FFB89BB175C98B3963FA708"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
