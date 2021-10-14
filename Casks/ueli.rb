cask "ueli" do
  version "8.18.0"
  sha256 "6c8317f274df053d427fbe25932e23c69c60c0bb10c0bd91d1943b072d6ec5af"

  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg",
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
