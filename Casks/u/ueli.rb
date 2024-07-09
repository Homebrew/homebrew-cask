cask "ueli" do
  arch arm: "-arm64"

  version "9.0.3"
  sha256 intel: "847be4d34c129912a1d41bad6969b5f40d442d6af7b551672aa973d1b0f6e8f7",
         arm:   "0e5070d2c4d42528ca617a62a06d2da0d4edfdec1a720ef60820172e99257f43"

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
