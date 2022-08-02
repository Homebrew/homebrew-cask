cask "xcodes" do
  version "1.6.0,14"
  sha256 "fb58b64faa7ab73dedad69a7ad11fc44ed3ecdfa05c74ef2831ba4139aa8a338"

  url "https://github.com/RobotsAndPencils/XcodesApp/releases/download/v#{version.csv.first}b#{version.csv.second}/Xcodes.zip"
  name "Xcodes"
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/XcodesApp"

  livecheck do
    url "https://robotsandpencils.github.io/XcodesApp/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Xcodes.app"

  zap trash: [
    "/Library/PrivilegedHelperTools/com.robotsandpencils.XcodesApp.Helper",
    "~/Library/Application Support/com.robotsandpencils.XcodesApp",
  ]
end
