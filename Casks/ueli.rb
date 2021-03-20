cask "ueli" do
  version "8.12.0"
  sha256 "8b8f8089771d19c7f8e166c2866103e128039ff166d409cbfacfb39294d58670"

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
