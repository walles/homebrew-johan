class Ftop < Formula
  desc "Top for Human Beings"
  homepage "https://github.com/walles/ftop"
  url "https://github.com/walles/ftop/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "2f08789da2f31ea6c0e9e3ae2b2e31a64158a775c3dba8719e8aa6c09c710e4e"
  license "MIT"
  head "https://github.com/walles/ftop.git", branch: "main"

  depends_on "go" => :build

  def install
    # Linker flags source:
    # https://github.com/walles/ftop/blob/22109ac57068973b83c9a6cbb8445147efd74bb6/build.sh#L33
    ldflags = "-s -w -X main.versionString=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/ftop"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/ftop --version").strip
  end
end
