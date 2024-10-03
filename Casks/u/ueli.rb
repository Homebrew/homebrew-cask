cask "ueli" do
  arch arm: "-arm64"

  version "9.6.1"
  sha256 intel: "38b37c80803c132b58b8208d19e0e7ce06dba26c69a4b984725682920993fc00",
         arm:   "ff33748a1e51d4a954ed4c833191a05b40d2e90f50d0598ef898837de3ae3522"

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
