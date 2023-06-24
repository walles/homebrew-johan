cask "loadviz" do
  version "0.1.0"
  sha256 "859d4f673a4ca7ab5cae51be59a1291f757c5652f2c93e062ff7d0ed1988bec4"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
