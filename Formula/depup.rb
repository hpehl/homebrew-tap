# SPDX-License-Identifier: Apache-2.0
class Depup < Formula
  desc "Check dependency versions across Maven and npm ecosystems"
  homepage "https://github.com/hpehl/depup"
  version "1.0.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/depup/releases/download/v1.0.0/depup-aarch64-apple-darwin.tar.gz"
    sha256 "318a65262f781157392cb6b72df3f54bbf92c40f6ff18338a9bc023cdb67b462"
  end

  on_intel do
    url "https://github.com/hpehl/depup/releases/download/v1.0.0/depup-x86_64-apple-darwin.tar.gz"
    sha256 "4622056bd1fceb26703393a0cb40b6d0435cad48b3249350bdd773cd1af64ed4"
  end

  def install
    bin.install "depup"
    generate_completions_from_executable(bin/"depup", "completions")
  end

  test do
    system "#{bin}/depup", "--version"
  end
end
