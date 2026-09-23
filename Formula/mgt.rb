# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.0/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "6e655a39e52e2f70110da2228486902f7c88dc3e599008e1dac49236605b5e99"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.0/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "c6fdb1592d4086fcdd8bb132e4e8890fe4ecb22ffef9c35b7381b5a47bc6793b"
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
