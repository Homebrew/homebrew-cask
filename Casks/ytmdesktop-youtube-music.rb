cask "ytmdesktop-youtube-music" do
  version "1.12.0"
  sha256 "6d13d4107257d44bc0cea7083228b01a714c0abd1f4c797440ec03175dd8f13f"

  url "https://dl.ytmdesktop.app/mac/YouTube%20Music%20Desktop%20App-#{version}.dmg"
  appcast "https://github.com/ytmdesktop/ytmdesktop/releases.atom"
  name "YouTube Music Desktop App"
  homepage "https://ytmdesktop.app/"

  app "YouTube Music Desktop App.app"

  zap trash: [
    "~/Library/Preferences/app.ytmd.plist",
    "~/Library/Saved Application State/app.ytmd.savedState",
  ]
end
