# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.3.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.3.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "eaf31ff9f323cb8da1def98b7c3618aba31467187215028aaee1112ea6423918"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.3.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "8a2ae254263cd9da51959f6b5fbb6c3436094614b4b7cee0cb4189489263daa9"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
