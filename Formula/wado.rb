# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.1/wado-aarch64-apple-darwin.tar.gz"
    sha256 "6aaed2c9bd578da022518b8332cb08b13a5a2297af9cd34da87849ff5ddb8714"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.1/wado-x86_64-apple-darwin.tar.gz"
    sha256 "e10c705024448d5aa9c5d0a317e5e4cd96d79323013a3dc5e7c7fac65b6eaf59"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
