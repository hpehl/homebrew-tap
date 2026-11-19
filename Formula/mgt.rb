# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.5.9"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.9/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "19bae3540964db88047d6aa7a786cdaed7b961ccef7ff0eaffdaee12fe5fbec5"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.5.9/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "493368c3acff74ec1adca8b9f5efb25505b011f77112ef99c670097b5ba8e92b"
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
