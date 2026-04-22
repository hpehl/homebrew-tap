# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.5/wado-x86_64-apple-darwin.tar.gz"
  sha256 "c7de505db700a89b857f9404c909fe6e7fac8f82f7106d27b4768abf83e82e4d"
  version "0.4.5"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
