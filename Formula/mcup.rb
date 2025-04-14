# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.4/mcup-x86_64-apple-darwin.tar.gz"
  sha256 "980d3d58c852c4f786e9eb7292bbf467cae5d72d0862d0b9529f3d30fc8c6904"
  version "0.2.4"
  license "Apache-2.0"

  def install
    bin.install "mcup"
    bash_completion.install "completions/mcup.bash" => "mcup"
    zsh_completion.install "completions/_mcup"
    fish_completion.install "completions/mcup.fish"
  end

  test do
      system "#{bin}/mcup", "--version"
    end
end
