# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.0/wado-aarch64-apple-darwin.tar.gz"
    sha256 "2f13a2e887a17ca640c33124b15c1f64ad190ace8887c29b77a06bd91c2c9b49"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.0/wado-x86_64-apple-darwin.tar.gz"
    sha256 "9dd939fce8bce2db58fde971721d96ee777635fd535ff22c4ed65fab6ed2152c"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
