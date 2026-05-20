# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.6"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.6/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "f5f1ce2cb4ef601342291ca88a23e33a446aca7b901bc0366412a38e3acc419a"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.6/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "97e7250c5f1d7477b082ec62a64c19f992528c26372274bb7efb445a7da5e212"
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
