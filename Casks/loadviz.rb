cask "loadviz" do
  version "1.2.2"
  sha256 "15795fcf3e14857af7b361554a64009de581e152572f119fd967b518550edff4"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
