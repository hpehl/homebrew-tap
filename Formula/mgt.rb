# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.2/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "bdb8b2ae62192ad35818ef623344287ad1d913b1adfbde54ffc43dfd9319ed40"
  version "0.2.2"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
