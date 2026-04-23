# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.10/wado-x86_64-apple-darwin.tar.gz"
  sha256 "6df9bc3139030c6a4710d80ea06fa7f2cc48751e14b9ffaa615e8e88faee9bae"
  version "0.4.10"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
