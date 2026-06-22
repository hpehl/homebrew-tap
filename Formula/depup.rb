# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.2.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.2.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "ccc8daf5a0b948d5bd285616c355f847005836aea635cd23c46fa9a707f36da6"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.2.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "917ba0774fe2d6b69d1c4184d16e6467e8b02d7cdfb98be8a312a0844d6ca1f7"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
