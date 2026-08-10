# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps

class Rustywind < Formula
  version 'v0.27.0'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "1ccec03e19eecef1cbae6f515c257721a7b359b432e4bdf09a71b3f77c43e952"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "ca74c02d7f38eb03322261bf40a42ab497cbffa5759d497c42ea76e467175925"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7c6c14823fbb0d0d0e9d181b4d16677a3cba65c53262e21c73e1161f49195cb9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "dc5b1dd090504202f97f82ec08ee5d4b1747703eb6c62c045dabe52a07da5202"
  end

  def install
     bin.install "rustywind"
  end
end
