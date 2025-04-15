# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.8/mcup-x86_64-apple-darwin.tar.gz"
  sha256 "7c95804ccead28f2551618db7736d1e4a238f8d526a0bbf03bacbaf707f2ecba"
  version "0.2.8"
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
