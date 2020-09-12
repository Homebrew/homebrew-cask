cask "toggl-track" do
  version "7.5.268"
  sha256 "75ae14ba2a9fe5006b287827429029bddb03b19a641cd84e68efcc36ffc06a56"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  app "Toggl Track.app"
end
