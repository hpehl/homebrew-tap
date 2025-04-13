# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  url "https://github.com/hpehl/waco/releases/download/v0.0.5/waco-x86_64-apple-darwin.tar.gz"
  sha256 "38af25585a2d826ddecd33986c33a338c78bbced3a6e06ddf360a5d24a70ca18"
  version "0.0.5"
  license "Apache-2.0"

  def install
    bin.install "waco"
  end

  test do
      system "#{bin}/waco", "--version"
    end
end
