cask "utm" do
  version "2.0.16"
  sha256 "78f2c0d0087e7d7f32a453fab4a2207c387b4510bc755fce36ade2d8d70e5679"

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
