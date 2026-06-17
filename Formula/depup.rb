# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "0.3.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v0.3.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "02e35a2e96ebc894e0dc0548600c45b799c5b8ed4433b9947b0ace9b0d28379a"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v0.3.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "fd776713932458c1a9542986dc0b74dd4bd596515179b434cd8a9fef9cae17d2"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
