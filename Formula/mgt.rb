# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.4"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.4/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "e2c5bb160146960565427c064934e56b77bae12375900522cfbd462a14de62d9"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.4/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "d6cfebdd9b866de1bf2e6e685f47a1cc556d4c3202afb036b6847a195b397f5f"
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
