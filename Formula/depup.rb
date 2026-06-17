# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "0.2.2"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v0.2.2/depup-aarch64-apple-darwin.tar.gz"
    sha256 "d19faa0d1f5cc9a9d2a7cb2d9198fdd95c70824388a16af7cb88af276cc37e14"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v0.2.2/depup-x86_64-apple-darwin.tar.gz"
    sha256 "87303e010463c26d4f7925eaf512b886d263cf204b3d1ec70498a4b9f0974816"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
