# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.7/mcup-x86_64-apple-darwin.tar.gz"
  sha256 "467539f83cc14664aeef4d32ce891c76cf97988482b50d589140aafd6f2d2592"
  version "0.2.7"
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
