class Moar < Formula
  desc "Moar is a pager. It's designed to just do the right thing without any configuration."
  homepage "https://github.com/walles/moar"
  url "https://github.com/walles/moar/releases/download/v1.8.1/moar-v1.8.1-darwin-amd64"
  sha256 "f0b28cd1ab0795b8f3b7c50ccdfc83bf5459ba10e9b8922d6dc372775cb82708"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args
  end

  test do
    system "./test.sh"
  end
end
