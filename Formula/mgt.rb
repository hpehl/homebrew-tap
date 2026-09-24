# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.2/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "826e5decaf4fe82c1c6cfadbe65c8dc721b3cf78f27b4d99a4d8609bafdd9e12"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.2/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "ed7858d747e6f85fa6b7eb82905c0acb9768d306bb97d94f16b5e726bcf989fa"
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
