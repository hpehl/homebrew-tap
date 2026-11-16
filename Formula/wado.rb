# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.11"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.11/wado-aarch64-apple-darwin.tar.gz"
    sha256 "2c53f7b8f83bec85cad0a0875976b382736baedbfc2a7ff4693c5feb39bd8031"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.11/wado-x86_64-apple-darwin.tar.gz"
    sha256 "b7bc0307b017b42df2948ec7273b3c0e1098f1fe45ed6b8eea2ba7cb9f4d0f4e"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
