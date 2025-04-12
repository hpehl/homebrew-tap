# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.1/waco-x86_64-apple-darwin.tar.gz"
  sha256 "9515be9dee5b9e43c49578c20b4b373e27723219f86bc6ca8add3885035dce52"
  version "0.0.1"
  license "Apache-2.0"

  def install
    bin.install "waco"
  end

  test do
      system "#{bin}/waco", "--version"
    end
end
