cask "loadviz" do
  version "1.2.4"
  sha256 "89538babf33c7be23067fafc7a6ce4d5bf6764924a0a5867f2dfceb1cf37999d"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: ">= :big_sur"

  app "LoadViz.app"
end
