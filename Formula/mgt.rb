# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.0/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "13f24c9a19d8e94472559502c140f70cc035f0d7b3eea16b35eb72aa82256f1f"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.0/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "12653009eacd559bf764d44b8f24ddb31f9cafed95f4c3a686a913cb720e761a"
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
