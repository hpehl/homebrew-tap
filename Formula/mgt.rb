# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.2/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "e0670c78e3b48f2685ee0d8cfeb3055c4b455a7264ff7df2a01c950dc4ebe9ab"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.2/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "1b5a639529dcfadfb32bbd5e159c94380390761409ab4ab57fb4d96082a2576d"
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
