# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.2.6"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.6/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "7d060378c302e76e039c1c3e569ebcbec3219a0bcc452a97eb3a06bea853aa08"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.2.6/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "a9cbaa33347192afe7305193430c620511cb6f0c9ac1f9918058034686057396"
  end

  def install
    bin.install "mgt"
    generate_completions_from_executable(bin/"mgt", "completions")
  end

  test do
    system "#{bin}/mgt", "--version"
  end
end
