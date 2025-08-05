# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.4/wado-x86_64-apple-darwin.tar.gz"
  sha256 "c3b26401b574069a3870764e65299269445c8c1dcdd307929fdbb2b928375e02"
  version "0.2.4"
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
