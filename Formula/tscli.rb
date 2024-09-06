class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.0/tscli-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.0/tscli-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.0/tscli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.0/tscli-x86_64-pc-windows-msvc.tar.gz"
    sha256 "807B353DA75033F5E11F99DFE50C929D95731F1D48D7B1164E8683A42FF19C15"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
