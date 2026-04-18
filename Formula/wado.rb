# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.3.5/wado-x86_64-apple-darwin.tar.gz"
  sha256 "2537f6177ab789a5c095dd75f8f91309967b0e059cf819c28ad118cef4298acb"
  version "0.3.5"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
