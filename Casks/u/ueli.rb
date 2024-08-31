cask "ueli" do
  arch arm: "-arm64"

  version "9.3.4"
  sha256 intel: "867b57d488d232bdf45c36e71c3dfd570f4b64fcd7d38af9323943c8e1500133",
         arm:   "2f591da3339c7459ecfdc633bac12d4e1cae93b916c19f1bcfc8f7bd5833f23a"

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
