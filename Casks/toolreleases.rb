cask "toolreleases" do
  version "1.3.6,35"
  sha256 "e8f96c1f5232ade80fa036644549f353cbc44b771589992d5dde7830fc59a15d"

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
