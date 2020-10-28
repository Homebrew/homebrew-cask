cask "toggl-track" do
  version "7.5.298"
  sha256 "a3bc557a5e9dc099734511b8e70c128f192e540a48cd7e6c9f02ed96e37ff038"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  auto_updates true

  app "Toggl Track.app"
end
