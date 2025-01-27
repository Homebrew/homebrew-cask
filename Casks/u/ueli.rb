cask "ueli" do
  arch arm: "-arm64"

  version "9.15.2"
  sha256 intel: "cc6c6dd39365b794176d72424f84686b3d17eba1b4fd80fb3d8f8d2d95d96173",
         arm:   "1ae1671fa928129982b301e7def7ac55f124603c8626505c2b9831827d842e69"

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
