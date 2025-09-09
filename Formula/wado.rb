# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.5/wado-x86_64-apple-darwin.tar.gz"
  sha256 "63349b085e06aaea9a786448721b043a035f9de23d01005672c26f5e187809bc"
  version "0.2.5"
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
