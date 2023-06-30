cask "loadviz" do
  version "0.3.0"
  sha256 "dc80b1ab9ba2ca3eb12a570033e7fa3cb47d8c3e8aa32f72b431847bd6008a85"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
