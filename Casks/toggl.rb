cask "toggl" do
  version "7.5.260"
  sha256 "4c001d7d9940ccd5563be1f03773ceeaca46efaf07be30819e04746e42bbeee3"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "Toggl Desktop"
  name "Toggl Track"
  homepage "https://www.toggl.com/toggl-desktop/"

  app "Toggl Track.app"
end
