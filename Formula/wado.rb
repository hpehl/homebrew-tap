# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.3"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.3/wado-aarch64-apple-darwin.tar.gz"
    sha256 "940a0ca5d628eb56fb0eb28e5a2265b06f12d6f1ceda869921aa06429fbeb68f"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.3/wado-x86_64-apple-darwin.tar.gz"
    sha256 "6f487c150274ab6561606270af711a6291d82323ef1dc829b58517b68b14f144"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
