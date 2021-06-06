class Px < Formula
  include Language::Python::Virtualenv

  desc "Ps and top for human beings (px / ptop)"
  homepage "https://github.com/walles/px"
  url "https://github.com/walles/px.git",
    using:    :git,
    tag:      "1.4.0",
    revision: "aea41c2a67a8b83e644e11d8ac152e2c123d0ee1"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    # This shouldn't crash
    system "px"
  end
end
