class Moar < Formula
  desc "A pager that is designed to be nice to use"
  homepage "https://github.com/walles/moar"
  url "https://github.com/walles/moar.git",
    using:    :git,
    tag:      "v1.8.1"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install "moar"
  end

  test do
    system "./test.sh"
  end
end
