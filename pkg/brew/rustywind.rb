# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps
class Rustywind < Formula
  name 'rustywind'
  version 'v0.2.0'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"


  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/#{name}/releases/download/#{version}/#{name}-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 ""
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/#{name}/releases/download/#{version}/#{name}-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 ""
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/#{name}/releases/download/#{version}/#{name}-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 ""
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/#{name}/releases/download/#{version}/#{name}-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 ""
  end

  def install
     bin.install name
  end
end
