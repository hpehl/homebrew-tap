# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.2.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.2.1/depup-aarch64-apple-darwin.tar.gz"
    sha256 "b2c114f78743be1032c0c1848bce139fe1df5a7e245a45b9ab01ce8180b2295a"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.2.1/depup-x86_64-apple-darwin.tar.gz"
    sha256 "60b1999602b623781ab76f4e734715b019b97d5e4ef709cabff30d0949347727"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
