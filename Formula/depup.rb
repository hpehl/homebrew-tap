# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.2/depup-aarch64-apple-darwin.tar.gz"
    sha256 "0ee82f8df791ae32654625ff5e43853f5f482bee92fd1a5a7528777cfd7a4005"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.2/depup-x86_64-apple-darwin.tar.gz"
    sha256 "80967358bb5fd884bc93f0e5ec8165a7ecb6a1e295639d755f48b1853a57bee8"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
