class Tscli < Formula
  desc "A CLI tool for taostat"
  homepage "https://github.com/taostat/homebrew-tscli"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v26e62a0ed86ea0eabd9a932942d2f5e67abb7833/tscli-macos-x86_64.tar.gz"
    sha256 ""
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v26e62a0ed86ea0eabd9a932942d2f5e67abb7833/tscli-macos-aarch64.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v26e62a0ed86ea0eabd9a932942d2f5e67abb7833/tscli-linux-x86_64.tar.gz"
    sha256 ""
  elsif OS.windows?
    url "https://github.com/taostat/homebrew-tscli/releases/download/v26e62a0ed86ea0eabd9a932942d2f5e67abb7833/tscli-windows-x86_64.tar.gz"
    sha256 "4E478F54D28B5362A239DC87DA2E85A6AF634A0A8C986127E5EE7E88B878C0A9"
  end

  license "MIT"

  def install
    bin.install "tscli"
  end

  test do
    assert_match "tscli", shell_output("#{bin}/tscli --version")
  end
end
