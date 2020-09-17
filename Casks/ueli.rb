cask "ueli" do
  version "8.8.2"
  sha256 "451f43576b3bea129c652efd1c6cf4b43cd7e26424c7ba3debd97812e25a93fb"

  # github.com/oliverschwendener/ueli/ was verified as official when first introduced to the cask
  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg"
  appcast "https://github.com/oliverschwendener/ueli/releases.atom"
  name "Ueli"
  desc "Keystroke launcher"
  homepage "https://ueli.app/"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Logs/ueli",
    "~/Library/Application Support/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
