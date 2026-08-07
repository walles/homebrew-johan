class Ftop < Formula
  desc "Top for Human Beings"
  homepage "https://github.com/walles/ftop"
  url "https://github.com/walles/ftop/archive/refs/tags/v0.0.23.tar.gz"
  sha256 "9c7110d6a9a6baedadc7f8383d22c74a741519b205d7b988a1950b44689e2cf6"
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
