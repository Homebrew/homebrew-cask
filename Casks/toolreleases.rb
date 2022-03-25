cask "toolreleases" do
  version "1.5.0,59"
  sha256 "2097bafa9cfe648c259e5c81f98137e3e38217838deccfe262460773807dd8df"

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

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ToolReleases.app"

  uninstall login_item: "ToolReleases",
            quit:       [
              "com.developermaris.ToolReleases",
              "com.apple.systemevents"
            ]

  zap trash: [
    "~/Library/Caches/com.developermaris.ToolReleases",
    "~/Library/Preferences/com.developermaris.ToolReleases.plist",
  ]
end
