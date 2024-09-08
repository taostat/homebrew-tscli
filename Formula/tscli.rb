class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.2.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.3/tscli-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.3/tscli-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.3/tscli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.3/tscli-x86_64-pc-windows-msvc.tar.gz"
    sha256 "46098D735017D71936421310B4D20AFF2A30A08F5998DA0B4D39D06C6F0C1474"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
