# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.3.3/wado-x86_64-apple-darwin.tar.gz"
  sha256 "db114a298910b2ec921c5f55ed387d50606cd993a692a92570b3c498e38894b6"
  version "0.3.3"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
