# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.4/wado-x86_64-apple-darwin.tar.gz"
  sha256 "d040df52f0575da76a0c025f1b50206b9576c4b82c5cac0c70ffe431ab843d5d"
  version "0.4.4"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
