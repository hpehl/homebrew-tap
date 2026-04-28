# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  url "https://github.com/model-graph-tools/tooling/releases/download/v0.0.2/mgt-x86_64-apple-darwin.tar.gz"
  sha256 "1270227b3e847d1f2f82ab59926c00ee1f265a1ad5d308fb5f476af884661a6a"
  version "0.0.2"
  license "Apache-2.0"

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
