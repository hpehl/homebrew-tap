# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.7"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.7/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "91785f279faafa1b6ea51bf9b8da73229d0d667d7c31b1dafb58efee815d3e49"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.7/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "f6f8cdf3ec895401e0f7ea2784318788642b08d13c9f345505b597a819bb4044"
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
