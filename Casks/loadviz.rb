cask "loadviz" do
  version "1.1.1"
  sha256 "83c665ea4aedc4808b5d6e8f51a7ee0ede91dfd4fc46860f42bc9a5ee30139e5"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
