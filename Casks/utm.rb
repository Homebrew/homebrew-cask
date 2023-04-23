cask "utm" do
  version "4.2.3"
  sha256 "2ad63f5e0c8293ef8ab752293a50f77a75a824c658a612a2eef52c05838b86b0"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg",
      verified: "github.com/utmapp/UTM/"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://getutm.app/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
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
