cask "toggl-track" do
  version "7.5.363"
  sha256 "eff4d6f27c555b93c5681788c9b93e5a31d3dff130f39e9227b432cf9455e4a9"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  auto_updates true

  app "Toggl Track.app"
end
