cask "xcodes-app" do
  version "4.2.0b42"
  sha256 "294ea51d0caf852b2ed2e97c371df004628345f885def5723a73653001c30115"

  url "https://github.com/XcodesOrg/XcodesApp/releases/download/v#{version}/Xcodes.zip"
  name "Xcodes"
  desc "Install and switch between multiple versions of Xcode"
  homepage "https://github.com/XcodesOrg/XcodesApp"

  # Upstream marks some releases that use a stable version format (v1.2.3b45)
  # as pre-release on GitHub.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Xcodes.app"

  zap trash: [
    "/Library/PrivilegedHelperTools/com.robotsandpencils.XcodesApp.Helper",
    "~/Library/Application Support/com.robotsandpencils.XcodesApp",
    "~/Library/Caches/com.xcodesorg.xcodesapp",
    "~/Library/HTTPStorages/com.xcodesorg.xcodesapp",
    "~/Library/Preferences/com.xcodesorg.xcodesapp.plist",
  ]
end
