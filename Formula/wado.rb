# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.11/wado-x86_64-apple-darwin.tar.gz"
  sha256 "9db316ec418ef4c41fa1ce95b22a207661c7c6aef05c8350cdc0eb44154f4977"
  version "0.4.11"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
