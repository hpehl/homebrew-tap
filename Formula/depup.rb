# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.4"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.4/depup-aarch64-apple-darwin.tar.gz"
    sha256 "a49dccd8b29d3d5254aae54e68a62c78fdbca830d59cf13b467da2f28d20a50e"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.4/depup-x86_64-apple-darwin.tar.gz"
    sha256 "e069fd181edcbcd4668ad7c9e328e9fe9b0434ad2272790598d42026b1d52aa3"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
