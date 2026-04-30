# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.1.1/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "c6df96b845a8092f6f09df6b30eeef8620f87f787e371dd74e418ef09dd5d43f"
  version "0.1.1"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
