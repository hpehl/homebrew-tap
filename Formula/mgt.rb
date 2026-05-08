# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.5"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.5/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "21b47f6453772a629657b64311df6e6debf7356303812b0a742f640d18d42fea"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.5/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "208d56612bdf5f63f5218573a85b6e63d27bf936976923b3ffb2ebf4deadede7"
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
