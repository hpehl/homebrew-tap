# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.11/waco-x86_64-apple-darwin.tar.gz"
  sha256 "7d1d48a8bbf1e19c6918bdc1dc7ad02b1e61763a313465dc922acdf06884bad5"
  version "0.0.11"
  license "Apache-2.0"

  def install
    bin.install "waco"
    bash_completion.install "waco.bash" => "waco"
    zsh_completion.install "_waco"
    fish_completion.install "waco.fish"
  end

  test do
      system "#{bin}/waco", "--version"
    end
end
