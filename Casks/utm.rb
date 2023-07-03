cask "utm" do
  version "4.2.5"
  sha256 "4f74c0f82c1d74db542fcd3101244249ccc60362cb4f03c4036fa39dcf66ea36"

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
