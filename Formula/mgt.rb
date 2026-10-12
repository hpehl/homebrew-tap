# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.6"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.6/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "5be00a8857264c3c0740723febb075b1ca8f99e8a24df1b352f5a48154199a9f"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.6/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "92aa24199594853f920b5b290851292fbbf370be66996ca96aa16e95d9ec3bf3"
  end

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  def post_install_steps
    system bin/"mgt", "update"
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
