cask "utm" do
  version "2.0.15"
  sha256 "596f87ff34ebabc4b0ea654174fa7d9e0672935fcaec5d28d76637270954fded"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  appcast "https://github.com/utmapp/UTM/releases.atom"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://getutm.app/"

  app "UTM.app"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
