cask "ueli" do
  arch arm: "-arm64"

  version "9.25.0"
  sha256 arm:   "449dcba9366cf2f8b79f37f687c3525f6e613a688e3d5e5dbf2dad095a9b17ca",
         intel: "7f2ddf6e8755bae9e8e5e99cfeade11ad861c3aae136e6e0bc63160479fd9a94"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}#{arch}.dmg",
      verified: "github.com/oliverschwendener/ueli/"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :big_sur"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Application Support/ueli",
    "~/Library/Logs/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
