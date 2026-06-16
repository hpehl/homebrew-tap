# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "0.2.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v0.2.1/depup-aarch64-apple-darwin.tar.gz"
    sha256 "5efe4c11ce64f703ca29e5de400fc3f8f9695a215376546da8a5381150011542"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v0.2.1/depup-x86_64-apple-darwin.tar.gz"
    sha256 "43278aa0e1c329567473f9e4ed4d7703cfd3f1f4735555198a4e2931328162f6"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
