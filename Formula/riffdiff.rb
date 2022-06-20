class Riffdiff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff.git",
    using:    :git,
    tag:      "2.17.0",
    revision: "5557b5a4f56d7e6a7e44a904659a2108f85a9bf7"
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
