cask "ueli" do
  arch arm: "-arm64"

  version "9.1.1"
  sha256 intel: "bfaf1c070ac699487e45b1ed8701dadb35a1d6adac1c334286230890ae588f46",
         arm:   "7ead3eea90231bd9c16f9bbc48d2fe82bc3722ff3de20746ad052942b63197b4"

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
