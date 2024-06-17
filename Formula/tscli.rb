class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/ve6c035543a7ae45226fa2cf9dfece5216aa945a0/tscli-macos-x86_64.tar.gz"
    sha256 ""
  elif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/ve6c035543a7ae45226fa2cf9dfece5216aa945a0/tscli-macos-aarch64.tar.gz"
    sha256 ""
  elif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/ve6c035543a7ae45226fa2cf9dfece5216aa945a0/tscli-linux-x86_64.tar.gz"
    sha256 ""
  elif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/ve6c035543a7ae45226fa2cf9dfece5216aa945a0/tscli-windows-x86_64.tar.gz"
    sha256 "7F7BA2CE7CD0FC18E7CBF461E8C675F97D23545BDC57F3986AE64E840AF8D06E
"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
EOF