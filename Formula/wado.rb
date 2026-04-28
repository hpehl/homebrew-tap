# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.13/wado-x86_64-apple-darwin.tar.gz"
  sha256 "225e23d99752fb978f8aa16219ecea4d3a39bc9a1947616d3843375102d733a6"
  version "0.4.13"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
