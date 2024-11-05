cask "ueli" do
  arch arm: "-arm64"

  version "9.9.0"
  sha256 intel: "d24dd2c65fc14a07d759cfc7be0afc4f6592acb76e626fb0e9ad5cad7891b00d",
         arm:   "2070af6f170690fff7169522f45dfad729bd81e8d945736c49eda2d44fb23dc4"

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
