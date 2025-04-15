# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.8/waco-x86_64-apple-darwin.tar.gz"
  sha256 "53735d3e2454eb6b96fd10813f38251356bcc56fa138839c2488d4f2e9c42b33"
  version "0.0.8"
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
