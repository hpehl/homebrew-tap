# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.1/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "6163951883efe986864bf14f8cea29d761d6935ae9607ea1826694d95a8c1b6d"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.1/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "606fbce06f61e62295c48f81f9aa6449eb974000a4b3bb69177d17bb799b73c5"
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
