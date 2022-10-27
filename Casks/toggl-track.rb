cask "toggl-track" do
  version "7.5.461"
  sha256 "db8626a20260927dc20785ce0a2cef62dc897045f9793abebce4a04fe2785882"

  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg",
      verified: "github.com/toggl-open-source/toggldesktop/"
  name "Toggl Track"
  desc "Time tracker"
  homepage "https://www.toggl.com/track/toggl-desktop/"

  livecheck do
    url "https://github.com/toggl-open-source/toggldesktop"
    strategy :github_latest
  end

  auto_updates true

  app "Toggl Track.app"

  zap trash: [
    "~/Library/Caches/com.toggl.toggldesktop.TogglDesktop",
    "~/Library/Preferences/com.toggl.toggldesktop.TogglDesktop.plist",
    "~/Library/Saved Application State/com.toggl.toggldesktop.TogglDesktop.savedState",
  ]
end
