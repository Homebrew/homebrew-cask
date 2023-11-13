cask "ueli" do
  version "8.26.0"
  sha256 "4bf25847e0ee2a7e25c3547adf04c33d82c78e98f5ce58c14ecca19cb34a6dc0"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg",
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
