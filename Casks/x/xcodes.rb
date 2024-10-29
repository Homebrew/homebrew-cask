cask "xcodes" do
  version "2.4.0b29"
  sha256 "bf79359087cb3cbe89d7ef8c361c1a79ffb9f1694694f51ee24f7c0860cb9523"

  url "https://github.com/XcodesOrg/XcodesApp/releases/download/v#{version}/Xcodes.zip"
  name "Xcodes"
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/XcodesOrg/XcodesApp"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Xcodes.app"

  zap trash: [
    "/Library/PrivilegedHelperTools/com.robotsandpencils.XcodesApp.Helper",
    "~/Library/Application Support/com.robotsandpencils.XcodesApp",
  ]
end
