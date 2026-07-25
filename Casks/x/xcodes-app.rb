cask "xcodes-app" do
  version "4.0.5b40"
  sha256 "e94e6971707db8c0faf81753ad92cd20ebefd0845e908c342d8fcdc7285d465c"

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
  ]
end
