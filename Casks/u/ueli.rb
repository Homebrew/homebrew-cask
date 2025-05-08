cask "ueli" do
  arch arm: "-arm64"

  version "9.23.0"
  sha256 intel: "3ddf92569209b6249088972aff10041a4e85ce8f6cbdd7746e9020acec1faed6",
         arm:   "93dc1bbb1684bcf6a23d565487f50a4aaa0761093415c940b1966d429c4d67e3"

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
