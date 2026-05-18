# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.2/wado-aarch64-apple-darwin.tar.gz"
    sha256 "8330a595e7d937ec1039c51380424e37a14a55f5dbea5235927377d06d9d58a0"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.2/wado-x86_64-apple-darwin.tar.gz"
    sha256 "d2fe8af49f7bbb9965627ce5dfad061ef695a1105352aec4d8fdf2576d853534"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
