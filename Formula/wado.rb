# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.1/wado-x86_64-apple-darwin.tar.gz"
  sha256 "459689baf135a75d1fea5cd4a3b945c1c9384946bed98919510e482146b2e5ea"
  version "0.4.1"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
