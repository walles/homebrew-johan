class Ftop < Formula
  desc "Top for Human Beings"
  homepage "https://github.com/walles/ftop"
  url "https://github.com/walles/ftop/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "a259ff62b933b93121e8d8e862884076b01dfbffb3cd3095ab770d1e4e8b02ab"
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
