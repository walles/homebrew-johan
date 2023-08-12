class Riff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff/archive/2.24.0.tar.gz"
  sha256 "9542e17cad4427dff48fc725aa931f8e3154fba459315fb6aea71105bf1c08b5"
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
