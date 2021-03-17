cask "ueli" do
  version "8.11.0"
  sha256 "b05719f0e9ef0b55c37265281241a361be96a503669c53610a33a889015fbac5"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  appcast "https://github.com/oliverschwendener/ueli/releases.atom"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Logs/ueli",
    "~/Library/Application Support/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
