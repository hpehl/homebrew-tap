# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.3"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.3/depup-aarch64-apple-darwin.tar.gz"
    sha256 "7c9c1192f9673b7ed345df9fe91ce4a2660ffb0e087a72352e6f5a3ec88105d7"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.3/depup-x86_64-apple-darwin.tar.gz"
    sha256 "616dbb0e1f723b1b227c8815c186401960b7c6441457fa32a815d9bbb9f46123"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
