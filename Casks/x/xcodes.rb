cask "xcodes" do
  version "2.1.1b25"
  sha256 "1ee33345fd719c8ec3e45bf1492bc7a1608bd7bfd48536d0da2d7ec3d6d231b4"

  url "https://github.com/RobotsAndPencils/XcodesApp/releases/download/v#{version}/Xcodes.zip"
  name "Xcodes"
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/RobotsAndPencils/XcodesApp"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Xcodes.app"

  zap trash: [
    "/Library/PrivilegedHelperTools/com.robotsandpencils.XcodesApp.Helper",
    "~/Library/Application Support/com.robotsandpencils.XcodesApp",
  ]
end
