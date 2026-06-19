# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.1.6"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.1.6/depup-aarch64-apple-darwin.tar.gz"
    sha256 "c359b1059c0f2e19cea53bd5910c4ea74a5e3ab3980ce1b22b87f38171d5e4bb"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.1.6/depup-x86_64-apple-darwin.tar.gz"
    sha256 "6a995cf315a80dbcbe96742c84dda2bc4dec1a5220c6f07e5884ffd3f19c4a19"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
