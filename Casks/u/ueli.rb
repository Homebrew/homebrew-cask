cask "ueli" do
  arch arm: "-arm64"

  version "9.24.0"
  sha256 arm:   "de33fc534be8b59d7b5a37293df21b58ec8816ee29dfcab3a0ebf4c1a0d4414f",
         intel: "f76c44b7bdf82b3adde142e49ff641c59959ffe85d838bc1134172c945afdea2"

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
