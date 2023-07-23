cask "loadviz" do
  version "1.2.0"
  sha256 "19a58855b997fe5c1cd807fac19363f9a1811f354d0cd6e82e75e7e0d38b7c50"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
