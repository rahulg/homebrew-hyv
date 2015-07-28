class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.4.0.tar.gz"
  sha256 "cbb6b67b3aae3a064610ec41c02544e97aa4bcc9c934ed364bdeef7378c27f9b"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite
  depends_on :python3
  depends_on "xhyve"

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
