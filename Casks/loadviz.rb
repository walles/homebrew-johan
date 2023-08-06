cask "loadviz" do
  version "1.2.1"
  sha256 "55818f6cb9c0fdab50c58622b8f69ce2f6d4d15bb1128d01cbf7780ec123817d"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
