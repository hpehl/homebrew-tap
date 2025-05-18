# SPDX-License-Identifier: Apache-2.0
class Wfadm < Formula
  desc "Command line tool to manage WildFly containers"
  homepage "https://github.com/hpehl/wfadm"
  url "https://github.com/hpehl/wfadm/releases/download/v0.1.0/wfadm-x86_64-apple-darwin.tar.gz"
  sha256 "6f024d19a5f49b4b99528fd256d89cb4ac6559475b60876e77a20fa6c69de2c9"
  version "0.0.7"
  license "Apache-2.0"

  def install
    bin.install "wfadm"
    bash_completion.install "wfadm.bash" => "wfadm"
    zsh_completion.install "_wfadm"
    fish_completion.install "wfadm.fish"
  end

  test do
      system "#{bin}/wfadm", "--version"
    end
end
