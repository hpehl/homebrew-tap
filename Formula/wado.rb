# SPDX-License-Identifier: Apache-2.0
class Wado < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wado"
  version "0.6.6"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/hpehl/wado/releases/download/v0.6.6/wado-aarch64-apple-darwin.tar.gz"
    sha256 "fd4cac4aa89a14695f4969ac740bf667d05caf056b1e039a40b22169471a5ea8"
  end

  on_intel do
    url "https://github.com/hpehl/wado/releases/download/v0.6.6/wado-x86_64-apple-darwin.tar.gz"
    sha256 "75b084784de61c572980b281fc23448826cac9b8463b14cab6f093a13fd0cb81"
  end

  def install
    bin.install "wado"
    generate_completions_from_executable(bin/"wado", "completions")
  end

  test do
    system "#{bin}/wado", "--version"
  end
end
