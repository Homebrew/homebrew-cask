cask "ueli" do
  arch arm: "-arm64"

  version "9.1.0"
  sha256 intel: "6ca20a7d740f2c9d2fed13c3b4a04e42b2db4d7c9865921ce6b4b767352138dc",
         arm:   "972699d37fb9e69bf8bc813e25943f4a130cd1745e65be08ac43a3448ba38d13"

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
