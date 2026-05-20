# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.5"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.5/wado-aarch64-apple-darwin.tar.gz"
    sha256 "4ac37c3d958792fe3ce9cb5dbc7ee9ee5bbd9c84227e2ce0e55177a3997941ac"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.5/wado-x86_64-apple-darwin.tar.gz"
    sha256 "85538f712b5bed64d0e1143e080c53415e81e1593fc7c415f8ece471c91baba7"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
