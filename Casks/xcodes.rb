cask "xcodes" do
  version "1.8.0,16"
  sha256 "1d2240f5574ea42d8f8d8fa11aec0fb30d31771c9f76242834235315c3f56504"

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
