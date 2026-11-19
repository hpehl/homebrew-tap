# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.10"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.10/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "9bc6d086943e210884906b873be90f8abbcf9dbbd44a973bacd79eaec5969b34"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.10/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "6eff0ff71518e90f4abaa873ea1731595da506e2469040d09c4ff73af6932ba9"
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
