# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.4"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.4/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "a658c60e1db3631d81952075c53e79cb1d6a9ae9fa4520a48f9a685324955624"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.4/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "4d24eab9fb92f1c0cdafacd3812ab7f02a7bb5fec432b7ed75daccc562049dd2"
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
