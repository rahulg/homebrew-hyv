class Xhyve < Formula
  desc "A lightweight OS X virtualization solution"
  homepage "http://www.pagetable.com/?p=831"
  head "https://github.com/mist64/xhyve.git"

  def install
    system "make"
    bin.install "build/xhyve"
  end

  test do
    system "#{bin}/xhyve", "-h"
  end
end
