class Moar < Formula
  desc "A pager that is designed to be nice to use"
  homepage "https://github.com/walles/moar"
  url "https://github.com/walles/moar/archive/refs/tags/v1.8.1.tar.gz"
  sha256 "f4edbca2cce46e64d033536958d813ed70e7668ab52316cb87e42cccdb00eaaf"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    system "./install.sh"
  end

  test do
    system "./test.sh"
  end
end
