# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.0/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "d68b87ae542760282c6007e708e39db35b8df2850c87be3942c7d525b4388b8a"
  version "0.2.0"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
