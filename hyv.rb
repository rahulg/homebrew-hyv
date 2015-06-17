class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  head "https://github.com/rahulg/hyv.git"

  def install
    bin.install "hyv"
  end

  test do
    system "#{bin}/hyv", "-h"
    system "#{bin}/hyv", "new"
  end
end
