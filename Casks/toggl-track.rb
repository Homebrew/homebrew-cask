cask "toggl-track" do
  version "7.5.386"
  sha256 "8c45c5ee596b6089d09c4409f78f6f0e98558842e11644e7edce19b707b4dd47"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  auto_updates true

  app "Toggl Track.app"
end
