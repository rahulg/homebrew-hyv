class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.8.1.tar.gz"
  sha256 "e87c1f4881542f6a702b77f48f71b232808c69b446358f73c5d41eb52a9efb3b"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite
  depends_on "python3"
  depends_on "xhyve" => :optional

  def install
    bin.install "hyv"
  end

  test do
    system "#{bin}/hyv", "--help"
    system "#{bin}/hyv", "--new"
    system "#{bin}/hyv", "--dry-run"
  end
end
