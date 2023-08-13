class Riff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff/archive/2.25.0.tar.gz"
  sha256 "c0a2d0c6beaab92431f6846a25544b3d63b3ea433e33c9db9aa9f5a5d65f1d97"
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
