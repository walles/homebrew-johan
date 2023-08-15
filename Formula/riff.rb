class Riff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff/archive/refs/tags/2.25.1.tar.gz"
  sha256 "4df3c1c55a391961e5f33c4775296f420c0e348e9f74b285ce739d9da791e5f4"
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
