cask "xcodes" do
  version "1.5.0,13"
  sha256 "0b17f9954dfe0060202f005043c47dc98427a53814a5a2c0cd4135a873abb4cc"

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
