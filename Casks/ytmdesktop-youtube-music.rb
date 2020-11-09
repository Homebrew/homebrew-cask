cask "ytmdesktop-youtube-music" do
  version "1.13.0"
  sha256 "074e95032a51d7787eed8c4ee2b19046676d72e0cba5cca59af7cc6f79d3887e"

  # github.com/ytmdesktop was verified as official when first introduced to the cask
  url "https://github.com/ytmdesktop/ytmdesktop/releases/download/v#{version}/YouTube-Music-Desktop-App-#{version}.dmg"
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
