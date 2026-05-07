# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.1/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "fda7e887d9603af5a563ccb3bd81fbb2440cdb4d2bc74fbe006718acb1bd6eef"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.1/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "04d2725e9ecd86c0058a58ebebbef4072322eb7207668cda7d0ccc2bc1e6422d"
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
