# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.3.1/wado-x86_64-apple-darwin.tar.gz"
  sha256 "dba3328d8a1f6e43fc9ce9222fe0460b7005fc45a87f85966a473102ab53559f"
  version "0.3.1"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
