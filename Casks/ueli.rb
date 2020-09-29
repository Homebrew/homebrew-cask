cask "ueli" do
  version "8.9.0"
  sha256 "229acb2af86f7b81fb00374d12aa56b47abd2b3d8cabb22ffb2de4fd0dc45189"

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
