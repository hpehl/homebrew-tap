# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wfadm/releases/download/v0.1.0/wado-x86_64-apple-darwin.tar.gz"
  sha256 "6f024d19a5f49b4b99528fd256d89cb4ac6559475b60876e77a20fa6c69de2c9"
  version "0.0.7"
  license "Apache-2.0"

  def install
    bin.install "wado"
    bash_completion.install "wado.bash" => "wado"
    zsh_completion.install "_wado"
    fish_completion.install "wado.fish"
  end

  test do
      system "#{bin}/wado", "--version"
    end
end
