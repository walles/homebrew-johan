cask "loadviz" do
  version "0.0.1"
  sha256 "8a05075c2df4e0847bfc86fe876456d7d66eeeecc80a7d361a5d078562f31e38"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  app "LoadViz.app"
end
