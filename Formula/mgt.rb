# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.4.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.4.0/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "9ee60b72f5d4b62169f65d42d46c6f3009bc642dde1514e8df48591d19a44e31"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.4.0/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "149ae2af6c11c057be596d3d0f13a4b39a595a57411fec16c996a0996bdf5e75"
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
