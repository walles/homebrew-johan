class Riffdiff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff.git",
    using:    :git,
    tag:      "2.20.0",
    revision: "f20ed994cdd3f16ba96fbc3dc378a7bd5bfceb29"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Test with two identical files, should output nothing and succeed
    assert_equal "", shell_output("riff /etc/passwd /etc/passwd").strip
  end
end
