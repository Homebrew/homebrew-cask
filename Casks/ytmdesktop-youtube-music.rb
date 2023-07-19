cask "ytmdesktop-youtube-music" do
  version "1.14.2"
  sha256 "d7fb0b2dbe54469b39fc1c2daf0f17e65b0d84d4a2c171998c41c7691a378f0d"

  url "https://github.com/ytmdesktop/ytmdesktop/releases/download/#{version}/ytm-desktop_macos-#{version.tr(".", "_")}.zip",
      verified: "github.com/ytmdesktop/"
  name "YouTube Music Desktop App"
  desc "YouTube music client"
  homepage "https://ytmdesktop.app/"

  app "YouTube Music Desktop App.app"

  zap trash: [
    "~/Library/Preferences/app.ytmd.plist",
    "~/Library/Saved Application State/app.ytmd.savedState",
  ]
end
