cask "toggl-track" do
  version "7.5.279"
  sha256 "f55894ded1003a60514873fe9ff9e7427f99019f5f77e31a6ea04a03f807d9c7"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  auto_updates true

  app "Toggl Track.app"
end
