cask "toggl" do
  version "7.5.245"
  sha256 "fb531704de5f019b5dd327e3af987725965d68130966dbe840157b7c1048d599"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "TogglDesktop"
  homepage "https://www.toggl.com/toggl-desktop/"

  conflicts_with cask: [
    "toggl-beta",
    "toggl-dev",
  ]

  app "TogglDesktop.app"
end
