cask "toggl" do
  version "7.5.242"
  sha256 "de20955225493a9ab9bb31f4f43dc6e3d7f1ca9f45cf71f936303057e4d208bc"

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
