# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.3.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.3.2/depup-aarch64-apple-darwin.tar.gz"
    sha256 "e1358e90892b2e41a99fffff990269d4291f3cdec1e1d1821a8c0a6292c765a5"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.3.2/depup-x86_64-apple-darwin.tar.gz"
    sha256 "358502d59c029c0093155b5151531eb4ab1997bdaad6d0a57d82071e95fbfde7"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
