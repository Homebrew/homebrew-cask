cask "utm" do
  version "2.0.14"
  sha256 "33154a7f552e28fc9411c8e7128e70596d56212fd0c5954d9c74975156476b35"

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
