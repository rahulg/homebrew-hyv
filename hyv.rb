class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.2.0.tar.gz"
  sha256 "5bdbe5cabc871dd70cd8bcc3db5513f92667933b4b33737f92bf32f83ddefcf7"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite

  def install
    bin.install "hyv"
  end

  test do
    system "#{bin}/hyv", "-h"
    system "#{bin}/hyv", "new"
  end
end
