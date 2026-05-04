# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.4.12"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.4.12/wado-aarch64-apple-darwin.tar.gz"
    sha256 "placeholder"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.4.12/wado-x86_64-apple-darwin.tar.gz"
    sha256 "93d3a719ff8790f3c1c0416d4d38e68d52929ecb6bbae3965f258e2bdb890edc"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
