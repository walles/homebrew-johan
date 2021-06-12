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

  def install_app(build_path, prefix)
    # Example value: "Bubblemon TouchBar.app"
    app_name = build_path.split('/')[-1]
    fail if app_name.empty?  # Safety first, we will be removing things!

    # Install into the Homebrew Cellar dir
    prefix.install build_path

    # Clean up any existing app
    applications_path = "#{Dir.home}/Applications/#{app_name}"
    FileUtils.remove_entry_secure applications_path if FileTest.exist? applications_path

    # Make this app visible in ~/Applications
    File.symlink("#{prefix}/#{app_name}", applications_path)
  end

  def install
    xcodebuild "build",
      "-project", "osx/bubblemon.xcodeproj",
      "-target", "Bubblemon",
      "-target", "Bubblemon TouchBar",
      "-target", "Bubblemon Menu Bar"

    install_app "osx/build/Release/Bubblemon.app", prefix
    install_app "osx/build/Release/Bubblemon TouchBar.app", prefix
    install_app "osx/build/Release/Bubblemon Menu Bar.app", prefix

    # Start bubbling
    system "open", "/Applications/Bubblemon.app", "--args", "--reinstall"
    system "open", "/Applications/Bubblemon Menu Bar.app"
    system "open", "/Applications/Bubblemon TouchBar.app", "--args", "--reinstall"
  end
end
