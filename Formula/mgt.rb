# SPDX-License-Identifier: Apache-2.0
class Mgt < Formula
  desc "Command line tool to analyze the WildFly management model"
  homepage "https://model-graph-tools.github.io/"
  version "0.3.3"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.3/mgt-aarch64-apple-darwin.tar.gz"
    sha256 "6c47bb052ac4bbd210a1b4ed7e0f2c756c40a27d009abce60110efea095b4de1"
  end

  on_intel do
    url "https://github.com/model-graph-tools/tooling/releases/download/v0.3.3/mgt-x86_64-apple-darwin.tar.gz"
    sha256 "c515c1373647b771e1b3e7b195d2cb8479932d9d583a08e99a45dbf0a57f45e6"
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
