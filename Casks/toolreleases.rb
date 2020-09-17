cask "toolreleases" do
  version "1.3.4,30"
  sha256 "933078535ca581d278b331761705b3791f03970ee8e14b62f24a2a6d74b8369a"

  url "https://github.com/DeveloperMaris/ToolReleases/releases/download/v#{version.before_comma}/ToolReleases_v#{version.before_comma}.b#{version.after_comma}.zip"
  appcast "https://github.com/DeveloperMaris/ToolReleases/releases.atom"
  name "ToolReleases"
  desc "Utility to notify about the latest Apple tool releases (including Beta releases)"
  homepage "https://github.com/DeveloperMaris/ToolReleases"

  depends_on macos: ">= :catalina"

  app "ToolReleases.app"

  uninstall login_item: "ToolReleases",
            quit:       "com.developermaris.ToolReleases"

  zap trash: [
    "~/Library/Caches/com.developermaris.ToolReleases",
    "~/Library/Preferences/com.developermaris.ToolReleases.plist",
  ]
end
