cask "loadviz" do
  version "1.0.0"
  sha256 "492072041a681af934adc42e6a67aaff03707899573fc36d68cb6414ef529449"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
