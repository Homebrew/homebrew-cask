cask "toggl-track" do
  version "7.5.347"
  sha256 "74d74d4ef2b46f4b95d515e712045c2e2bf8eee8c3b6f498b8de602851fc91e4"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  auto_updates true

  app "Toggl Track.app"
end
