class Riff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff/archive/2.23.4.tar.gz"
  sha256 "59a7a9b3f87fa63b3d15672b58412a412525c12dc683be9c98cf544ad2aa2200"
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
