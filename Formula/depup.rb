# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "0.1.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v0.1.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "6253ad50cc05ba1cafc15f1d064330c527d4be47cdf9fb0885acbe4d999e08e2"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v0.1.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "66e7ef9bb9213f4e554ab2f147a769c8523a24e52656743532b676d82332aeab"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
