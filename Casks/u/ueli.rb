cask "ueli" do
  arch arm: "-arm64"

  version "9.4.0"
  sha256 intel: "47deaebd8fead9f706863e60cfa99d68dcdb232d29fe42f50b9dbe192f681853",
         arm:   "a60c28f8a64b5220cd0948a6e3eac21dad90ab4c96b2237c15feeb9d1b5d2349"

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
