cask "ueli" do
  arch arm: "-arm64"

  version "9.0.2"
  sha256 intel: "f7985155e7084e517342da7255d8179aa5a1452a54c5c2768a6c66da288d4ae1",
         arm:   "0c4427f018d4263227a2c7a019cbcd7799524cc634bc0278dbbb11357533ce7a"

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
