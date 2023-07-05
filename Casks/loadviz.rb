cask "loadviz" do
  version "1.1.0"
  sha256 "18d9e5aef52fb19f1b2b28d1dc42f2c4d8709bd351ff54a1da96d48bd5778b21"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
