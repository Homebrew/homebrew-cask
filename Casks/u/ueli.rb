cask "ueli" do
  arch arm: "-arm64"

  version "9.9.1"
  sha256 intel: "424ce57bd950f9dc90c6a2ad9b93defe2fb237e0b5486b681e92d548f61086a8",
         arm:   "dbe0059ad214a92d4f7f5bbe33f3cbf4bf15f5c32c607ae01e11f8d1dde27f05"

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
