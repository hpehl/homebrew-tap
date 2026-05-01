# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.3/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "a4bf0cedc0a523a0be9d1625f7a7c5cdb924c68d63cc3a1c45806db160c3b6d8"
  version "0.2.3"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
