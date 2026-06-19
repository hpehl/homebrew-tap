# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.1/depup-aarch64-apple-darwin.tar.gz"
    sha256 "16efb5d77fe938762f1636245afdf0c5fd9902959a88f3f3f82318dd51d436e1"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.1/depup-x86_64-apple-darwin.tar.gz"
    sha256 "4f57e1364c3de9730f71582492073690ebda4c881736e98c6fdcad7b99fabf74"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
