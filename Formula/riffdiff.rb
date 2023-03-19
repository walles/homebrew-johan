class Riffdiff < Formula
  desc "Diff filter highlighting which line parts have changed"
  homepage "https://github.com/walles/riff"
  url "https://github.com/walles/riff.git",
    using:    :git,
    tag:      "2.23.2",
    revision: "45c68576777142ec33e82a12850ad867ceeedc4e"
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
