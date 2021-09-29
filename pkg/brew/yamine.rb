# To install:
#   brew tap avencera/yamine
#   brew install yamine
#
# To remove:
#   brew uninstall yamine
#   brew untap avencera/yamine

class Yamine < Formula
  version 'v0.1.1'
  desc "A simple CLI for combining json and yaml files"
  homepage "https://github.com/avencera/yamine"
  license "Apache-2.0"


  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "38981ed024379f9060278d1859dd482867345b7067200697fe49f41afcb89e29"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "69713402fb4a5e33ac9d7460613e4c4f9ceeac9ed30c236912cf1307a49601e2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5b5803dbf35a22f5233eb0e4c13c6903b80e24eb09fb1b84900241440b48eed9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0de17cbaa2c302ec4917c6bbf56f9a0290b9a234b0ef3742d39d16dc870cf965"
  end

  def install
     bin.install "yamine"
  end
end
