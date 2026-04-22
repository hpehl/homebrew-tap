# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.8/wado-x86_64-apple-darwin.tar.gz"
  sha256 "243baa4fb08843c90966b6f197ecb6704909e865751edc0e6997b02959d4506e"
  version "0.4.8"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
