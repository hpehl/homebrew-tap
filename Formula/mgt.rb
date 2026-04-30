# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.1/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "1d9501b65b58963111148f167934d6a62e046631e6f9d9f18e06e9ea9b04b927"
  version "0.2.1"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
