class Px < Formula
  include Language::Python::Virtualenv

  desc "Ps and top for human beings (px / ptop)"
  homepage "https://github.com/walles/px"
  url "https://github.com/walles/px.git",
    using:    :git,
    tag:      "1.4.0",
    revision: "aea41c2a67a8b83e644e11d8ac152e2c123d0ee1"
  license "MIT"

  depends_on "lsof"
  depends_on "python@3.9"

  # For updates: https://pypi.org/project/six/
  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  # For updates: https://pypi.org/project/python-dateutil/#files
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # These shouldn't crash
    system "px"
    system "px", Process.pid.to_s
  end
end
