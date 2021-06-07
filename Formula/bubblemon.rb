class Bubblemon < Formula
  # Can be bumped to latest master at any time, get your SHAs here:
  # https://github.com/walles/bubblemon/commits/master
  #
  # NOTE: Update VERSION (below) if you do this
  REVISION = "8e5cc56adb0fb1a5f9d5a0e13113d4351e6b6ef3".freeze

  # YYYY.MM.DD of when REVISION ^ was committed
  #
  # NOTE: Update together with REVISION (above)
  VERSION = "2021.03.03".freeze

  desc "System load visualization for human beings"
  homepage "https://walles.github.io/bubblemon"
  url "https://github.com/walles/bubblemon.git",
    using:    :git,
    revision: REVISION
  version VERSION
  license "GPL-2.0-or-later"

  depends_on xcode: :build
  depends_on :macos

  def pour_bottle?
    # Must be built locally due to macOS security measures
    false
  end

  def install
    xcodebuild "build",
      "-project", "osx/bubblemon.xcodeproj",
      "-target", "Bubblemon",
      "-target", "Bubblemon TouchBar",
      "-target", "Bubblemon Menu Bar"
    prefix.install "build/Release/Bubblemon.app"
    prefix.install "build/Release/Bubblemon TouchBar.app"
    prefix.install "build/Release/Bubblemon Menu Bar.app"

    # Start bubbling
    system "open", "#{prefix}/Bubblemon.app", "--args", "--reinstall"
    system "open", "#{prefix}/Bubblemon Menu Bar.app"
    system "open", "#{prefix}/Bubblemon TouchBar.app", "--args", "--reinstall"
  end
end
