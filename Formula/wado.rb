# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.9/wado-x86_64-apple-darwin.tar.gz"
  sha256 "40512fb86664fcbfd96ece850ccb1fef93ce904f67e8cfc339532090ad5015e1"
  version "0.2.9"
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
