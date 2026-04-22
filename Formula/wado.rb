# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.9/wado-x86_64-apple-darwin.tar.gz"
  sha256 "8968e11a01c0c6d3dbd7437b34e88b2c00dabe3239b315559c0cb8a3c6f7ee5b"
  version "0.4.9"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
