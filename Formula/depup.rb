# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "0.2.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v0.2.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "85339f21d8429e028bd5ebd12a186dcad341c2fe9f7155f6f280bb199ba791ac"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v0.2.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "1f1393a1a92d9d31d10a6d4390c5b255702a1d8964f3cdbef82ea9e210b20abf"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
