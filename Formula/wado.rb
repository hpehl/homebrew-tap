# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.4"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.4/wado-aarch64-apple-darwin.tar.gz"
    sha256 "6f9e1372dd371f7e8f7a66782f1e7662874b0c9704fb783f5514172561e03d19"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.4/wado-x86_64-apple-darwin.tar.gz"
    sha256 "ae34cf75f1f595df263db0cd9fdfb89072078b7ac70ded85346e100ec7b97342"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
