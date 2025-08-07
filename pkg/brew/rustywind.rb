# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps

class Rustywind < Formula
  version 'v0.24.2'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "bc73009850b0fbbed3d588961224b821b2f67e5c9ae7b4c160e56ea2ec55d645"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "50d06eabe9c1d75e00c661e3f3e3909ed9793d8a0349c4dbeca36253082b482a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "38df4bed1792b721142e81abf6a378f6fcf6063ab0d315fdc084604770277aed"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "b8bd96959dc119b686062bf33077236be3aaf4c787a6361e391c891c10e76fa9"
  end

  def install
     bin.install "rustywind"
  end
end
