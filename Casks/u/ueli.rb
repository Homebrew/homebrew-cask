cask "ueli" do
  arch arm: "-arm64"

  version "9.2.0"
  sha256 intel: "9ed163c3db07925115aec38b04ed73cdba61c8d2166290fea5460c9ed05cb32a",
         arm:   "8b7ce807c5d0168a3b6c0f36425471fe86567c4a00f51cc3e8a7402b3daf79e2"

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
