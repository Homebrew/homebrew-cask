cask "ueli" do
  arch arm: "-arm64"

  version "9.14.2"
  sha256 intel: "0d8adeb4434f8a68e0af10cbbe5fdbf9916c653a7abae719d077753c734bf1c5",
         arm:   "1f48234b6b1aa11fdf2c3ffedaf79f65a727319c25f8a6f85e389c336bc62c84"

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
