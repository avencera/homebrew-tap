# To install:
#   brew tap avencera/taps
#   brew install easywind
#
# To remove:
#   brew uninstall easywind
#   brew untap avencera/taps

class Eaywind < Formula
  version 'v0.1.2'
  desc "A complete quickstart CLI for Tailwind with generator and livereload server"
  homepage "https://github.com/avencera/easywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/easywind/releases/download/#{version}/easywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "2a65fe56322d2f7e0d23e02266b0681d3ff4293f89c909521e1cf9dc4a8a1257"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/easywind/releases/download/#{version}/easywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "72f695e041306c525fc821dad88236e5a984a99e24ee84701607dee3bc342d70"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/easywind/releases/download/#{version}/easywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "dfdd39033900e56575c51ee1fe5f1424a08d5f8027a9618d2741d45f53e939cd"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/easywind/releases/download/#{version}/easywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "d4ca74c1ee9416a408e0fdd8569d79939c4bd90e6501434511380b5bfe7c55d7"
  end

  def install
     bin.install "easywind"
  end
end
