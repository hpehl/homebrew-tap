# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.9/waco-x86_64-apple-darwin.tar.gz"
  sha256 "3ccd8bd6cb1c1f442b3b0eab08005d33564fb569abcfae81cf51ebcfe69119cd"
  version "0.0.9"
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
