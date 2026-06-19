# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "ea9fb3e44f15c3fe34e3b9e85921075d9220f2e896c827e4178fa1900e5e1bed"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "96b24534fa5da5a69c9cf208b43d86dbea64ceb0d8bc3432d9e9db3264b16620"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
