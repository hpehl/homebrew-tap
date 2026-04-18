# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.3.4/wado-x86_64-apple-darwin.tar.gz"
  sha256 "28fc5b5d41b20a6a5059ae8dcd8eae29d831b9f2080ffaa8a26337f9a85f6d36"
  version "0.3.4"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
