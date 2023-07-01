cask "loadviz" do
  version "0.4.0"
  sha256 "37f745d4f3e4daaa4a0f51690c9fbc0233da587ae0dae323557e117ceec50ca7"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
