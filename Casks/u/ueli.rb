cask "ueli" do
  arch arm: "-arm64"

  version "9.14.1"
  sha256 intel: "5dcbec714e46b57fd84785b9c1b9a6f5b68ba6eab96795d9afc8c5dd28df091a",
         arm:   "e647d5356903204a6adcb4152b3c2344849ccf3eadd4fbd2352d2e1a913b8e40"

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
