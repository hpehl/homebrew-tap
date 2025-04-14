# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.6/mcup-x86_64-apple-darwin.tar.gz"
  sha256 "03159ae515008f9da141fe636b2bc26f657530068081a45b6fa1509ef966101d"
  version "0.2.6"
  license "Apache-2.0"

  def install
    bin.install "mcup"
    bash_completion.install "mcup.bash" => "mcup"
    zsh_completion.install "_mcup"
    fish_completion.install "mcup.fish"
  end

  test do
      system "#{bin}/mcup", "--version"
    end
end
