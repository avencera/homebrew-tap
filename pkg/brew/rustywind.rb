# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps

class Rustywind < Formula
  version 'v0.21.0'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "a189b56b7fcc5107b2b2b99f6ee3d6c363b774cb548821f07c258dcf3100fc91"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "c7113e9c5ac92534a2f9b45d4a39ef2995826cb3028d3b0c01611f35886af284"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0152d61d7644b4dc113b7af39102b9e393571a9dbd53f63f996c3b4991b9f6b4"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "6dba376361773d32b0fa0a6ec8683603de82241839eaa036a6a4e883e546ee71"
  end

  def install
     bin.install "rustywind"
  end
end
