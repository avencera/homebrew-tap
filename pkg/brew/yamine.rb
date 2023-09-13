# To install:
#   brew tap avencera/taps
#   brew install yamine
#
# To remove:
#   brew uninstall yamine
#   brew untap avencera/taps

class Yamine < Formula
  version 'v0.3.0'
  desc "A simple CLI for combining json and yaml files"
  homepage "https://github.com/avencera/yamine"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c3586a70643eccff545fd7fe5df38b102041779ca75897cb76e51d3ec4356bcf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "f68c0dbf7a8422b7d461c5d56429ebd272c1a951b7c1e09f5ddaad7db31e91ed"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f70f6bdb2324d5a7174d791a189f913f8c0f26e069b1ee5d5cd7777587ef54ee"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avencera/yamine/releases/download/#{version}/yamine-#{version}-aarch64-unknown-linux-musl.tar.gz"
    sha256 "34a4078fd7cbecc5a295ec596457ff7bec419ac7c53bd429fd702fab45ab095b"
  end

  def install
     bin.install "yamine"
  end
end
