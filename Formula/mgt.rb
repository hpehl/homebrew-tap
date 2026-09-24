# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.3"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.3/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "cae1cf06f0a142668fe5213a74839a18946802179e55ff5842bca4429dcc15e6"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.3/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "ccd4678eae3c3f8b9785fd0aeb32d4763d108099cf9d4445ff34fcabbf6276fe"
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
