cask "ueli" do
  arch arm: "-arm64"

  version "9.14.0"
  sha256 intel: "390018e6b0b94f854ade71ef269354372742e9af861145a1fa278c4951021ce7",
         arm:   "533d4b02f7dd2933c6fee2baa84b2b8e5708fa0054f17f051de0155769119ee2"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
