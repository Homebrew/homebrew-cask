cask "utm" do
  version "2.0.22"
  sha256 "766902ec3dcdb55ceba605aae8d45fc0cfbf7534b15aff8c0d1bb825f0325ac8"

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
