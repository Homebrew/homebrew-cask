cask "xcodes" do
  version "1.10.0b18"
  sha256 "b5c68c9900b56da2818541a60f33bd4ad9d423db7baee257cae23f0b02aebedc"

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
