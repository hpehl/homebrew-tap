# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.2/wado-x86_64-apple-darwin.tar.gz"
  sha256 "d88f7370bd46c7c343b6cc0173cd828ab1a7064e1dcb0be7757384fc2e388df8"
  version "0.2.2"
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
