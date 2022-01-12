cask "xcodes" do
  version "1.2.0,8"
  sha256 "b691d1935058b0ddff2eef1a2f9a73f76e42df2d783d7f4f84112382de15ea93"

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
