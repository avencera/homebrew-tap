# To install:
#   brew tap avencera/taps
#   brew install splitmonic
#
# To remove:
#   brew uninstall splitmonic
#   brew untap avencera/taps

class Splitmonic < Formula
  version 'v0.1.0'
  desc "Split your BIP39 mnemonic phrase using shamir secret sharing"
  homepage "https://github.com/avencera/splitmonic"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "4840dafdf426fbd96e78fbdf31e6927169b525746b0a502f3bb83518126e6931"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "13ac790d09cde8a07a0c892e2da3e66d0421f8b616cb3415281a77f3d075321f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/splitmonic/releases/download/#{version}/splitmonic-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
     bin.install "splitmonic"
  end
end
