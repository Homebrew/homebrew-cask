cask "ueli" do
  version "8.28.0"
  sha256 "141329ff2528ea24ed39b66e9836b678d383c697ab7a5564ffec6651d45610ef"

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
