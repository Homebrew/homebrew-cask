cask "ueli" do
  arch arm: "-arm64"

  version "9.3.0"
  sha256 intel: "4197c75c8b68edaca114d638e383d2c55d75f69db9d0fdfb5b5a15c2234cb5ff",
         arm:   "b62a4568786d99fd4f7f1a9411c6b3b5aae5590246d2d20e12c80ff85757c2fa"

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
