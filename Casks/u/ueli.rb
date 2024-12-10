cask "ueli" do
  arch arm: "-arm64"

  version "9.12.0"
  sha256 intel: "ab0395af9377126308b71adae564a7d5e5658a1ad8cd2079c817c2dc7a863e50",
         arm:   "a8a78774edbffc4d98eeafd0b23bf8ebe710a1f10795573fe24028806f482b2f"

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
