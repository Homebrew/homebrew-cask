cask "xcodes-app" do
  version "4.2.1b43"
  sha256 "a2d4f182560893ab2b554c09b1fe55e1e88fe6087ac3775717a3996bb8a2fe09"

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

  zap delete: [
        "/Library/PrivilegedHelperTools/com.robotsandpencils.XcodesApp.Helper",
        "/Library/PrivilegedHelperTools/com.xcodesorg.xcodesapp.Helper",
      ],
      trash:  [
        "~/Library/Application Support/com.robotsandpencils.XcodesApp",
        "~/Library/Caches/com.xcodesorg.xcodesapp",
        "~/Library/HTTPStorages/com.xcodesorg.xcodesapp",
        "~/Library/Preferences/com.xcodesorg.xcodesapp.plist",
      ]
end
