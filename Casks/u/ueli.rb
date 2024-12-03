cask "ueli" do
  arch arm: "-arm64"

  version "9.11.1"
  sha256 intel: "64d8a3a98f0f1b41f67604be95b95f64111633fb93bebfbea5c2a572ab717d85",
         arm:   "6e37d16b9a90c7883287e8bbec100a761ffe2e366c06b53e28253757b6954193"

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
