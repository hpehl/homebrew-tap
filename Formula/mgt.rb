# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.0.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.0.1/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "placeholder"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.0.1/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "placeholder"
  end

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
