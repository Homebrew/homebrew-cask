cask "xcodes" do
  version "1.0.3,4"
  sha256 "4e0f093fada9f90584b528aedb49087e9ae18b25146f8941677f8638bbadfa5b"

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
