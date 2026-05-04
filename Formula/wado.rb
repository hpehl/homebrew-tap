# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.5.0/wado-x86_64-apple-darwin.tar.gz"
  sha256 "2ffd3eab48154d544bd9846e2d83e9ddb79f1aba1a7b5d27cf290b214f9ba17e"
  version "0.5.0"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
