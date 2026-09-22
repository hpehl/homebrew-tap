# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.8"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.8/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "3f9ff8f951f24bbc2539cea4bd0aa8ffc30c404ec116eefe250683131d8738ea"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.8/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "212b578016d8a876e4a1d108e08e6b375ac84b6afb3de7d6a7b4b1bfd2fef7a2"
  end

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  def post_install
    system bin/"mgt", "update"
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
