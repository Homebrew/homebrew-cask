cask "ueli" do
  arch arm: "-arm64"

  version "9.15.1"
  sha256 intel: "5b5593eed11f9437f2df091d36e8c536169c859bbb5ee5f4d2be599a77423f8a",
         arm:   "64a5d29e08356016d6362b5e63edbe93034587169f0f36ee537ef8b09b1445f1"

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
