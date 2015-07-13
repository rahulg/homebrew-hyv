class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.2.1.tar.gz"
  sha256 "6d8a255042ba75498b3f23ed30a8e8c4eb00519d691831c90d0849398cc12a01"
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
