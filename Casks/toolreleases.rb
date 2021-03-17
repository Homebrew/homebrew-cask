cask "toolreleases" do
  version "1.3.7,38"
  sha256 "53494264a42439c66183d9cec05d18e8e243986e3efbfd6dee937011e942a167"

  url "https://github.com/DeveloperMaris/ToolReleases/releases/download/v#{version.before_comma}/ToolReleases_v#{version.before_comma}.b#{version.after_comma}.zip"
  name "ToolReleases"
  desc "Utility to notify about the latest Apple tool releases (including Beta releases)"
  homepage "https://github.com/DeveloperMaris/ToolReleases"

  livecheck do
    url "https://github.com/DeveloperMaris/ToolReleases/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ToolReleases_v?(\d+(?:\.\d+)*)\.b(\d+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "ToolReleases.app"

  uninstall login_item: "ToolReleases",
            quit:       "com.developermaris.ToolReleases"

  zap trash: [
    "~/Library/Caches/com.developermaris.ToolReleases",
    "~/Library/Preferences/com.developermaris.ToolReleases.plist",
  ]
end
