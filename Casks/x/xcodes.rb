cask "xcodes" do
  version "2.1.2b26"
  sha256 "804bc88b85f6a068f880d2b88064fe9b87bc84012866f385f3904e96503a8c60"

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
