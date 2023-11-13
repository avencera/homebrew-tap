# To install:
#   brew tap avencera/taps
#   brew install yamine
#
# To remove:
#   brew uninstall yamine
#   brew untap avencera/taps

class Yamine < Formula
  version 'v0.4.0'
  desc "A simple CLI for combining json and yaml files"
  homepage "https://github.com/avencera/yamine"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "3a412ae70409f307d0d184cdd98cc7d146d776d2553dde23cf1194eb496caf7d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "8741bdc38555dd4d8f271da2bd4bb0f311261397029f66d8f27b21a5396f3be3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e107928536081cbad02037df54c46368b9b3a2afe3e4befd2014050bf93eba59"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "63ce61dacca593abc4311d182b327548e73913274890d4cd2d2f2b0ab369a893"
  end

  def install
     bin.install "yamine"
  end
end
