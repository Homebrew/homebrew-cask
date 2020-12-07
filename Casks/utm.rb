cask "utm" do
  version "2.0.13"
  sha256 "b5da51993b4dd8b4aa189d0732ba1662e5f21051536f7fef1cc7b2a7e8441031"

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
