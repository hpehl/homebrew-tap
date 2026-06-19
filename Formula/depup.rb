# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.5"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.5/depup-aarch64-apple-darwin.tar.gz"
    sha256 "443fdf5cc844d98213e0089be5dffba2694efda895a18bfb31989426d4151f46"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.5/depup-x86_64-apple-darwin.tar.gz"
    sha256 "575b7ccbd4b527bdbe16bc614a160812da9b16129f97aeea089ef94c752e44c9"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
