class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.2/tscli-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.2/tscli-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.2/tscli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.1.2/tscli-x86_64-pc-windows-msvc.tar.gz"
    sha256 "7075336E74042C417FE12737C70A4D8A2CDBA8F2564A40738556157C89FC2A3E"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
