class Hyv < Formula
  desc "CLI tool to easily run xhyve VMs"
  url "https://github.com/rahulg/hyv/archive/0.3.0.tar.gz"
  sha256 "d08afb394cafe0f03edad96509e34e3ef06f76f7570b50252df413509e4cf1e4"
  head "https://github.com/rahulg/hyv.git"

  depends_on :macos => :yosemite
  depends_on :python3

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
