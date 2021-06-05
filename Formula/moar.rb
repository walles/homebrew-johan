class Moar < Formula
  desc "Pager that is designed to be nice to use"
  homepage "https://github.com/walles/moar"
  url "https://github.com/walles/moar.git",
    using:    :git,
    tag:      "v1.8.1",
    revision: "fec9ad814970ee1a271b19326214647460b3200c"
  license "BSD-2-Clause"

  depends_on "go" => :build

  def install
    system "./build.sh"
    bin.install "moar"
  end

  test do
    # Test piping something through moar
    (testpath/"test.file").write <<~EOS
      tyre kicking
    EOS
    assert_equal "tyre kicking", shell_output("moar test.file").strip
  end
end
