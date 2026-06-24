# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.3.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.3.1/depup-aarch64-apple-darwin.tar.gz"
    sha256 "1dae98eae21f3736b9a9c83196a304cc15cc37a65108037bc0c47419d65c0151"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.3.1/depup-x86_64-apple-darwin.tar.gz"
    sha256 "a8f136561a0a198eba8999c2f831b2c2c389c8f419936e74946adf5b43a98b43"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
