cask "ueli" do
  arch arm: "-arm64"

  version "9.17.0"
  sha256 intel: "779ada040ed4377b1dd24f278c6fc639f6c1de4a336b2891fd4ee272012f7a4a",
         arm:   "1317ab8c3c3158fb20ca57b5fe00e4d55f04e9c5e625997954ab375510331279"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
