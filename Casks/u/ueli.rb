cask "ueli" do
  version "9.0.0"
  sha256 "8c105ff2480dc0b5aa2fdd43ca5bab9923216e05f123adc845e887a06894d31e"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/Ueli-#{version}-universal.dmg",
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
