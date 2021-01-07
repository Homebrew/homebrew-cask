cask "ueli" do
  version "8.10.0"
  sha256 "38e9b6f4558ba32350cd1bdf516e5e70fb04d06f2365420531781c1b09793c58"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :git
  end

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Logs/ueli",
    "~/Library/Application Support/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
