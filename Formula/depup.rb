# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.3.3"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.3.3/depup-aarch64-apple-darwin.tar.gz"
    sha256 "647b06897258777894a61b9158a4180f5ea5915499a717e0e4aa4900155d9b6f"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.3.3/depup-x86_64-apple-darwin.tar.gz"
    sha256 "bfc7bd728d48b69242a574514b49abaf1807c1f7758d36f0e1c8db02fb5ad8bc"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
