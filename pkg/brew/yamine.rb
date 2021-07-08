# To install:
#   brew tap avencera/yamine
#   brew install yamine
#
# To remove:
#   brew uninstall yamine
#   brew untap avencera/yamine

class Yamine < Formula
  version 'v0.1.0'
  desc "A simple CLI for combining json and yaml files"
  homepage "https://github.com/avencera/yamine"
  license "Apache-2.0"


  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "9789325e16bfb4443e64f1e7fc036f6f5e74bf853aab0e7898b7b36cef0e69a5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "9c4c8a7adf8fcf99c4d955d5803fd383719f83458228d0866672608948b40b55"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "212144e6025de75651b3942feadecc387d8f0302bf4d6bc4947d395d13112c32"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4847d632fb01ad8619a827fa11fb0e2b45d3c66e7ab0ce8dd2c0037b4e1513bc"
  end

  def install
     bin.install "yamine"
  end
end
