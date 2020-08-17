cask "ueli" do
  version "8.8.1"
  sha256 "f4b9d73e022cd0d2e8419c97609f0ffdf22fa46509c375f6c6c978bf86054c14"

  # github.com/oliverschwendener/ueli/ was verified as official when first introduced to the cask
  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg"
  appcast "https://github.com/oliverschwendener/ueli/releases.atom"
  name "Ueli"
  homepage "https://ueli.app/"

  app "ueli.app"

  uninstall quit: "ueli"

  zap trash: [
    "~/Library/Logs/ueli",
    "~/Library/Application Support/ueli",
    "~/Library/Preferences/com.electron.ueli.plist",
  ]
end
