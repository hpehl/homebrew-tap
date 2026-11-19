# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.8"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.8/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "a69858c2aec78863bd3e08a5d822f9c5ce451fdfcf32a4cd95d0a7d8f4b486ac"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.8/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "cd31f76888e346a3a30e0fbf17e68b8137f89f4dcd8a09f4a1130d49f629e297"
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
