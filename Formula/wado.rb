# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.2.12/wado-x86_64-apple-darwin.tar.gz"
  sha256 "46888df84b2fac4f8ce305e524d1ebc351878da40e413a3fbeb8c325717217b1"
  version "0.2.12"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
