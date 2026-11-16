# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.7"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.7/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "4fc9709356ed403614cdcaf88ae05a8d142fa3a797b95d0973df29589bb6cedd"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.7/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "e59135a213b357d6e38a2f8605501f71989d2eb6fb6892f989be0645ea197261"
  end

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  def post_install_steps
    system bin/"mgt", "update"
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
