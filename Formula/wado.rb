# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.5.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.5.2/wado-aarch64-apple-darwin.tar.gz"
    sha256 "568e5dead45057c5ee21d72628a30a1e800b09e06c297ebddb3b244ec319b74f"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.5.2/wado-x86_64-apple-darwin.tar.gz"
    sha256 "7f533a898461f7d0b208010502c8cdfbc50afde5bfc0721c3285ddf84d324176"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
