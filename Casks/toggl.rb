cask "toggl" do
  version "7.5.254"
  sha256 "f4462fc3d5057069c0c4fa62bbef59b3d27e1390e64f21f9a7bd76e50f87c667"

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
  name "TogglDesktop"
  homepage "https://www.toggl.com/toggl-desktop/"

  app "TogglDesktop.app"
end
