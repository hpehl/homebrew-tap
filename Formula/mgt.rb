# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.2.8"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.8/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "1ac41cc88d6c566711811d8a055f863d32aa7b26be702db3ff6e254d6b3cc8a3"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.8/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "0e4d9370b439c9dda8f92683d4f13cd02698b2d230147650d70d09860930102c"
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
