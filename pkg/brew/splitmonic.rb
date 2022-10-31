# To install:
#   brew tap avencera/taps
#   brew install splitmonic
#
# To remove:
#   brew uninstall splitmonic
#   brew untap avencera/taps
class Splitmonic < Formula
  version 'v0.1.0'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/splitmonic"
  license "Apache-2.0"


  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "8e71a5a5a1526c669e3ded23b1917d359c6be53a80ccf5e0b7c656f434e96fb6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "af03dc49aa723f144ea5747b49bc9c1ab02239f4344c7ed8cd125d3e386d6bc7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "af8703fa778ad0e56a1d9ba22d588d9752d7ed1b9f8b58a9fd40b564f165e5d3"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "54411952e5e5d058bf5615a4165765216439b9bccd4de192a62d1e8b41b6dc8d"
  end

  def install
     bin.install "splitmonic"
  end
end
