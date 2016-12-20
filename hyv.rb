class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.7.0.tar.gz"
  sha256 "13f4113093355ff38c9d181f779c5051d0ea9d1551b0028611a438dce626dc1c"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite
  depends_on :python3
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
