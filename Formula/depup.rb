# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.3.4"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.3.4/depup-aarch64-apple-darwin.tar.gz"
    sha256 "654ccef6810f4a4975237f074ca6304d3ee00cc21abc66893b8d35d5994b1bac"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.3.4/depup-x86_64-apple-darwin.tar.gz"
    sha256 "ee43f8bcb5acfd3a7b8fba1b1b6019be4abd0e89447ef9498f22995374e596db"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
