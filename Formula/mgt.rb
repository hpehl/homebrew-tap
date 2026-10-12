# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.5"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.5/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "c8e52a75d4f1a20204aaa4dd0002a20eb5edcd33a3a8baa150a0059633c466c6"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.5/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "8ad667fc922aec3a8207a0afcd666130df25a8b6bb5a875b0ee154de40b2c27c"
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
