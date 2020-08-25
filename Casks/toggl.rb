cask "toggl" do
  version "7.5.255"
  sha256 "49af409fefa88db42afda97431fe466ed79486c2df609cfee2decb17675653ff"

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
