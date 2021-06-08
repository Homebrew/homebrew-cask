cask "xcodes" do
  version "1.1.0,7"
  sha256 "8b243d5e061ea27a8d2fb76dd2e4d77d2f70b5c8bf1294b044cb945a9a0efa83"

  url "https://github.com/RobotsAndPencils/XcodesApp/releases/download/v#{version.before_comma}b#{version.after_comma}/Xcodes.zip"
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
