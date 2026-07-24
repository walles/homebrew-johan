cask "loadviz" do
  version "1.2.6"
  sha256 "72dba00cc8665371cc3077bb9a1a6b1fa110fd9880976691b012b5285a7ea3fe"

  url "https://github.com/walles/loadviz/releases/download/macos-#{version}/LoadViz-macos-#{version}.tar.bz2"
  name "LoadViz"
  desc "System Load Visualization in the Menu Bar"
  homepage "https://github.com/walles/loadviz/"

  depends_on macos: :big_sur

  app "LoadViz.app"

  caveats <<~EOS
    LoadViz is ad-hoc signed rather than notarized by Apple, so macOS
    Gatekeeper blocks it the first time you launch it.

    To open it, launch it once, be denied, then go to
    System Settings > Privacy & Security and click "Open Anyway".

    After this one-time step LoadViz launches normally.
  EOS
end
