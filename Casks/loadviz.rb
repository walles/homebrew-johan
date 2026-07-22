cask "loadviz" do
  version "1.2.5"
  sha256 "718286fe5fd56b69a5fa3d9dbfe2d14d94743653212184229d0fb94d5ca1f0cd"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: :big_sur

  app "LoadViz.app"
end
