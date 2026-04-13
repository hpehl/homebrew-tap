# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.13/wado-x86_64-apple-darwin.tar.gz"
  sha256 "37191594447c6477c548f9090b45febac5fc9550ebb80525f39b5319e0fceed5"
  version "0.2.13"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
