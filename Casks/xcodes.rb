cask "xcodes" do
  version "1.0.4,5"
  sha256 "f3f6d615b4858b7c3d9e8dd7c1c3f2ae7789542a16db56bbf38949e551bf6df9"

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
