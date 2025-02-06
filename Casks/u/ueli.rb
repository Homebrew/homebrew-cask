cask "ueli" do
  arch arm: "-arm64"

  version "9.16.0"
  sha256 intel: "711c2600f7dff2771977c99e55a5ab7635d5b7d71c8c2a4d5dad6475824106c6",
         arm:   "904ba273726764522c3adaf63a8c95a64a4d8bcfd961579c19a69b7d0db11130"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
