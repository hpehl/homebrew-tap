# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.12/waco-x86_64-apple-darwin.tar.gz"
  sha256 "cb32f613d15e4ede89149531ea8a3c7f08113c6c87577ee26b0b971abe3d8027"
  version "0.0.12"
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
