cask "toggl-track" do
  version "7.5.441"
  sha256 "95bed62de497a9ef0009083aea23a715cc1836230f0a207d0e08f0aa7d604619"

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

  zap trash: [
    "~/Library/Caches/com.toggl.toggldesktop.TogglDesktop",
    "~/Library/Preferences/com.toggl.toggldesktop.TogglDesktop.plist",
    "~/Library/Saved Application State/com.toggl.toggldesktop.TogglDesktop.savedState",
  ]
end
