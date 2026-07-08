# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps

class Rustywind < Formula
  version 'v0.25.2'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c7a61eef4abcc44222270a687d22a9c24f5015c2f52970f5c17ac86ce845f32a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "8726e240a1ece0c8f45aec20586a327f64ca4c361b6d5d92787b90db025e76d3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "974c9bd10cffbfca050cc4e8628507b5f3b6c66c09ef12ab2e0e2f78a02e64fe"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "48881274213d7d6646a7349145e002369588901d64a8d44b2f76bff1c090d2c6"
  end

  def install
     bin.install "rustywind"
  end
end
