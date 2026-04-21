# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  url "https://github.com/hpehl/wado/releases/download/v0.4.3/wado-x86_64-apple-darwin.tar.gz"
  sha256 "a13b6e5d8d178bfde2a4e926ba93a3f972aeade6075202c1e0903b2ba38e058c"
  version "0.4.3"
  license "Apache-2.0"

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
