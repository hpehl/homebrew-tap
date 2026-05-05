# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.5.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.5.1/wado-aarch64-apple-darwin.tar.gz"
    sha256 "d06907c7665911ddb292a288cb61ba4552019c9e79b66bd5d884bdac60391cc7"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.5.1/wado-x86_64-apple-darwin.tar.gz"
    sha256 "1981d1a88ed365b5c39f32a8d07d69b6aabb9aa6f999825743669fd171ff0253"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
