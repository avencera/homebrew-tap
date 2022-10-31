# To install:
#   brew tap avencera/taps
#   brew install yamine
#
# To remove:
#   brew uninstall yamine
#   brew untap avencera/taps
class Yamine < Formula
  version 'v0.2.0'
  desc "A simple CLI for combining json and yaml files"
  homepage "https://github.com/avencera/yamine"
  license "Apache-2.0"


  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "b155c7eb57138ec6f79ff524169b8bb27b752adc27f7b27908dfc887a0ec7fd1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "a0b9c074e87a7e7ad7329f6ede20ff45a9570fcdba62f81561b01117afa7f5fb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2caee72784ba61c123538436df3e37106554d7a25854bb5464fa0cb54c6e008e"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "77b684cabb5db089cfba4c8c81162b44af2afb3d5f44af7cf91d4dbdaf3de26d"
  end

  def install
     bin.install "yamine"
  end
end
