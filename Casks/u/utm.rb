cask "utm" do
  version "4.4.4"
  sha256 "4b2aea90d59150a412dc3d7b5d8b02fdd7022a53cb18d36c1b9a1b1221c4d4b9"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://getutm.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:[.-]\d+)+)/i)
    strategy :github_latest
  end

  conflicts_with cask: "homebrew/cask-versions/utm-beta"

  app "UTM.app"
  binary "#{appdir}/UTM.app/Contents/MacOS/utmctl"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Application Scripts/*com.utmapp*",
    "~/Library/Containers/com.utmapp*",
    "~/Library/Group Containers/*.com.utmapp.UTM",
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
