cask "loadviz" do
  version "0.2.0"
  sha256 "9b717481f28c7e1baa12ca04c73221b3a196150001791fc88d57ccd7a2086041"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
