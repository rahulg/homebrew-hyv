class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.6.1.tar.gz"
  sha256 "3955d59d4be8d4e6f8a20642af96338e7cebf9da3806c6c9109138c6e2fb709e"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite
  depends_on :python3
  depends_on "xhyve" => :optional

  def install
    bin.install "hyv"
  end

  def caveats; <<-EOS.undent
    If you're upgrading from versions older than 0.3.0, note that hyv now uses
    ini-style configuration files.

    You can generate a new config.hyv with:
      hyv --new
    EOS
  end

  test do
    system "#{bin}/hyv", "--help"
    system "#{bin}/hyv", "--new"
    system "#{bin}/hyv", "--dry-run"
  end
end
