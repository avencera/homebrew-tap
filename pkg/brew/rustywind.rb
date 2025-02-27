# To install:
#   brew tap avencera/taps
#   brew install rustywind
#
# To remove:
#   brew uninstall rustywind
#   brew untap avencera/taps

class Rustywind < Formula
  version 'v0.24.0'
  desc "CLI for organizing Tailwind CSS classes"
  homepage "https://github.com/avencera/rustywind"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "71a77de9e1922d13204c6bad2f2ad587d01d9b37ee171c31657bc82577c718d0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "f743dfdc449bdef547ca44693ce2b6fd784797a44d9dbd87cac6a4998fe5b738"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0cb3fc9758c6f95e159e012e706bd966e380fafca680428338c2d6e7b75db96e"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/rustywind/releases/download/#{version}/rustywind-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "4f398d7774d9454d8d91c527a20a07568722bbe8a5269b5db0978d36dda7b6a3"
  end

  def install
     bin.install "rustywind"
  end
end
