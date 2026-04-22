# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.7/wado-x86_64-apple-darwin.tar.gz"
  sha256 "1681645c9f85e9094c7fa1be902d6e8439fc99a7dc02048765dcfcab44fad984"
  version "0.4.7"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
