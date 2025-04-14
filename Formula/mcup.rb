# SPDX-License-Identifier: Apache-2.0
class Mcup < Formula
  desc "Command-line tool to keep your local maven repository small 📦 and tidy 🧹"
  homepage "https://github.com/hpehl/mcup"
  url "https://github.com/hpehl/mcup/releases/download/v0.2.3/mcup-v0.2.3-x86_64-apple-darwin.tar.gz"
  sha256 "db1d3a8f3296b684a8f81a4d1d46675fb396522c44f4fdd07e762802efd096a6"
  version "0.2.3"
  license "Apache-2.0"

  def install
    bin.install "mcup"
  end

  test do
      system "#{bin}/mcup", "--version"
    end
end
