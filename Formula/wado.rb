# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.2/wado-x86_64-apple-darwin.tar.gz"
  sha256 "d93648de1683e73d2230fcadf84887a0977c35cd84f291962db8de2bc412f2a3"
  version "0.4.2"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
