cask "ueli" do
  arch arm: "-arm64"

  version "9.8.0"
  sha256 intel: "3de95e60e924e2c382fedc0224efda3f200aed23e877e25bbf518f951f2f25c7",
         arm:   "2a1cc94d566d1cad9463c6f911725275b78e3d34385ff72fa54ddc7c9c5a3399"

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
