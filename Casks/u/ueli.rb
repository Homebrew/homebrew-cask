cask "ueli" do
  arch arm: "-arm64"

  version "9.13.0"
  sha256 intel: "ffc6d8dbb76efab1b9c12fb489636176d1bb522731d2173c530595846dd6a250",
         arm:   "bb11a773a7a03551c1a6007b61b3e11617c9c1cf270eb95d995f46f81013426d"

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
