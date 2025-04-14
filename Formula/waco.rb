# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.4/waco-x86_64-apple-darwin.tar.gz"
  sha256 "6d96af279879774e048b0cafa2bb7f649a4546053bcc40eeb8030790e530492f"
  version "0.0.4"
  license "Apache-2.0"

  def install
    bin.install "waco"
  end

  test do
      system "#{bin}/waco", "--version"
    end
end
