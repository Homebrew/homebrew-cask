cask "ueli" do
  arch arm: "-arm64"

  version "9.26.0"
  sha256 arm:   "e2db3ddbbf9c53b665739b5e6612b88c8cc7c32139434de964f448650b919af2",
         intel: "b4d839cec9e9de56c881d250fe74ff6bf62c49fbb9dd329f805501eae1b904ed"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
