# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.6/wado-x86_64-apple-darwin.tar.gz"
  sha256 "0e10f2590b87e040a3540c7838f6298b77c46116a764fb6baf44bae95e3a7c12"
  version "0.4.6"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
