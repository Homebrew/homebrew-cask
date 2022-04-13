cask "xcodes" do
  version "1.3.1,11"
  sha256 "d8dab272c446eb24b3ef9dfee1b1511b449d01ae5cfccd612279bb3a7283f859"

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
