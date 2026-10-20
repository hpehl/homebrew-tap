# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.10"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.10/wado-aarch64-apple-darwin.tar.gz"
    sha256 "1d1152041d796eb826faae6e5e0a84a61cbf919ae80be799be78ea1650f830df"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.10/wado-x86_64-apple-darwin.tar.gz"
    sha256 "67be8796dea5d4578b8ea24d41ba58bf79aff6a2dfef2fd5f080a59de114a4b5"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
