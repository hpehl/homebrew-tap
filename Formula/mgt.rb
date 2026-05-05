# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.2.7"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.7/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "a23e09d2556273d59fd25104ed0818671c169ff8197886f293ce9d8e46206710"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.7/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "fa54fa8c44ce86b2fec7903e6b1a8136a1086da3ccdbd74dbbca31ac89b34e65"
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
