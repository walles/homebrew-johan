cask "loadviz" do
  version "1.2.3"
  sha256 "4b03b8c73fe286d2f2246de97b29751e455793c9c97f9b4cd6ff1dc1807bee46"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
