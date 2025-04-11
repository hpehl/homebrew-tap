# SPDX-License-Identifier: Apache-2.0
class Waco < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/waco"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/hpehl/waco/releases/download/v0.0.1/waco-x86_64-apple-darwin.tar.gz"
    sha256 "9515be9dee5b9e43c49578c20b4b373e27723219f86bc6ca8add3885035dce52"
  end
  on_linux do
    url "https://github.com/hpehl/waco/releases/download/v0.0.1/waco-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1fab1435c80c493955489b981831caab4f97db3056257f72ea0690b064f47313"
  end

  def install
    bin.install "waco"
  end

  test do
      system "#{bin}/waco", "--version"
    end
end
