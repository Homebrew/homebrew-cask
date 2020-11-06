cask "ueli" do
  version "8.10.0"
  sha256 "38e9b6f4558ba32350cd1bdf516e5e70fb04d06f2365420531781c1b09793c58"

  # github.com/oliverschwendener/ueli/ was verified as official when first introduced to the cask
  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg"
  appcast "https://github.com/oliverschwendener/ueli/releases.atom"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Logs/ueli",
    "~/Library/Application Support/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
