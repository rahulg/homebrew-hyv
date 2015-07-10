class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.1.0.tar.gz"
  sha256 "31bc129c2a67c1f0029377ab4ce5c9c96844c7aabf7535739c77a1372c785541"
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
