class Riffdiff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff.git",
    using:    :git,
    tag:      "2.23.1",
    revision: "ceaa210fd7c5560873133310d4b36ededa71c6e2"
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
