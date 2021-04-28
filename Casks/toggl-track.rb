cask "toggl-track" do
  version "7.5.409"
  sha256 "41aea0bc1583fc845e6a864010262b2e8e3b11c8cf05fb19925c4d6c9fd80095"

  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg",
      verified: "github.com/toggl-open-source/toggldesktop/"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  livecheck do
    url "https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Toggl Track.app"
end
