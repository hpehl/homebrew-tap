# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.1.0/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "58dfcfa53ddb22072297c38ad25d6620b9f9e2b02107ca505fdf8bbfe1dd03cc"
  version "0.1.0"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
