cask "utm" do
  version "2.4.1"
  sha256 "cab9a7d9dc23004e10382cb496ca5336f263d5e0f7e0dff3efd5a6d12e4fd291"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://getutm.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "UTM.app"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
