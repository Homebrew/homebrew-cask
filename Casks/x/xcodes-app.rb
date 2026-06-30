cask "xcodes-app" do
  version "4.0.4b39"
  sha256 "9ce937b498b0c37939cb65fb33f2584776a1e4ce4fd9f7f78b8d58c437a1f79c"

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
