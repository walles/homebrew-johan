class Moar < Formula
  desc "A pager that is designed to be nice to use"
  homepage "https://github.com/walles/moar"
  url "https://github.com/walles/moar/releases/download/v1.8.1/moar-v1.8.1-darwin-amd64"
  sha256 "f0b28cd1ab0795b8f3b7c50ccdfc83bf5459ba10e9b8922d6dc372775cb82708"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    system "./install.sh"
  end

  test do
    system "./test.sh"
  end
end
