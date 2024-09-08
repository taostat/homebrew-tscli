class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.2/tscli-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.2/tscli-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.2/tscli-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v0.2.2/tscli-x86_64-pc-windows-msvc.tar.gz"
    sha256 "77A3D9D5FC2707D7D5A5D864D343CE631E5829D676D6D0B9047B82DDB32B70FB"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
