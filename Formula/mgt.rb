# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.0.1/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "placeholder"
  version "0.0.1"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    bash_completion.install "mgt.bash" => "mgt"
    zsh_completion.install "_mgt"
    fish_completion.install "mgt.fish"
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
