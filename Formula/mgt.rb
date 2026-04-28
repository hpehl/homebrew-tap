# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.0.1/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "a03dfa80a347e19335d6c158fa10878646e2afd9509648a4be5e49917180c320"
  version "0.0.1"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
