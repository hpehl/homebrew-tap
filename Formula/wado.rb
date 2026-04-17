# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.3.0/wado-x86_64-apple-darwin.tar.gz"
  sha256 "c30b836d489fa7256e2a8ec092bad12ae1bb87ffb033b89986667ebe7b84b02c"
  version "0.3.0"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
