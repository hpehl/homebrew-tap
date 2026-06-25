# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.7"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.7/wado-aarch64-apple-darwin.tar.gz"
    sha256 "0a6e437709992bd19c26667837b99356ce6f747c9aeb8fb64ad549904045cb62"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.7/wado-x86_64-apple-darwin.tar.gz"
    sha256 "ad929bcf403cbd020b14893800bbfc17658859cba4fbb072cbdec3b476cf129f"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
