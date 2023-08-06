class Riffdiff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff/archive/2.23.3.tar.gz"
  sha256 "17bd2f34e7e6657a71737de972a8da903e72b255e21327e93e9afb08d9e340c3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test with two identical files, should output nothing and succeed
    assert_equal "", shell_output("#{bin}/riff /etc/passwd /etc/passwd").strip
  end
end
