# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.4/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "ca56adadf1fee7b80708c187112cb0160618587306e66dfb205e4f000b60bd17"
  version "0.2.4"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
