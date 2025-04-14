# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.7/waco-x86_64-apple-darwin.tar.gz"
  sha256 "6f024d19a5f49b4b99528fd256d89cb4ac6559475b60876e77a20fa6c69de2c9"
  version "0.0.7"
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
