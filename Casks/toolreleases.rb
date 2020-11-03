cask "toolreleases" do
  version "1.3.5,31"
  sha256 "e96bfc7314b3ec2efdb14aa3fca83d4dbcca530dbdeb054ae8f4416b34e66263"

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
