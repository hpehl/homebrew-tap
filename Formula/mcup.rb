# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.9/mcup-x86_64-apple-darwin.tar.gz"
  sha256 "441a754534a9a327770e748ec0b10b1b33e6bd12f2f980b840d6d7cb9f3e22d2"
  version "0.2.9"
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
