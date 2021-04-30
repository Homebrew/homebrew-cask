cask "xcodes" do
  version "1.0.5,6"
  sha256 "3f5a0fa524e5058bdd99dffcf29f381f879ddd6856464c78948c5bbc8ad07b0a"

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
