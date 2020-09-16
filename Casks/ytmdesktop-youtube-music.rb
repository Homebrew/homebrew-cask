cask "ytmdesktop-youtube-music" do
  version "1.12.1"
  sha256 "b559f4cf2e6a42c4745e80ddb853513db965bad7ee6139c6f912348a8ed80419"

  # github.com/ytmdesktop was verified as official when first introduced to the cask
  url "https://github.com/ytmdesktop/ytmdesktop/releases/download/v#{version}/YouTube.Music.Desktop.App-#{version}.dmg"
  appcast "https://github.com/ytmdesktop/ytmdesktop/releases.atom"
  name "YouTube Music Desktop App"
  desc "YouTube music client"
  homepage "https://ytmdesktop.app/"

  app "YouTube Music Desktop App.app"

  zap trash: [
    "~/Library/Preferences/app.ytmd.plist",
    "~/Library/Saved Application State/app.ytmd.savedState",
  ]
end
