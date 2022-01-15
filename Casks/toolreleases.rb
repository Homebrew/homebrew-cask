cask "toolreleases" do
  version "1.4.2,45"
  sha256 "1904c8a70263f2be5c9f089671e29eef1514d5a70d4390a8eedfd089047e943e"

  url "https://github.com/DeveloperMaris/ToolReleases/releases/download/v#{version.csv.first}/ToolReleases_v#{version.csv.first}.b#{version.csv.second}.zip"
  name "ToolReleases"
  desc "Utility to notify about the latest Apple tool releases (including Beta releases)"
  homepage "https://github.com/DeveloperMaris/ToolReleases"

  livecheck do
    url "https://github.com/DeveloperMaris/ToolReleases/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/ToolReleases_v?(\d+(?:\.\d+)*)\.b(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "ToolReleases.app"

  uninstall login_item: "ToolReleases",
            quit:       "com.developermaris.ToolReleases"

  zap trash: [
    "~/Library/Caches/com.developermaris.ToolReleases",
    "~/Library/Preferences/com.developermaris.ToolReleases.plist",
  ]
end
