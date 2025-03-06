cask "wifiman" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.3"
  sha256 arm:   "cedb1e12544422f2a1f26f96af0fad11b360658295182b4023f1b28ac5297a46",
         intel: "ca075d6ab6e8e5331247c0b60c4295456a394fecfc6bc29c23571386194bf60e"

  url "https://desktop.wifiman.com/wifiman-desktop-#{version}-#{arch}.pkg"
  name "WiFiman Desktop"
  desc "Network monitoring and troubleshooting tool"
  homepage "https://wifiman.com/"

  livecheck do
    url "https://community.svc.ui.com/", post_json: {
      query: "query { releases(tags: [\"wifiman\"]) { items { title version } } }",
    }
    strategy :json do |json|
      json.dig("data", "releases", "items")&.map do |item|
        next unless item["title"]&.include?("Desktop")

        item["version"]
      end
    end
  end

  pkg "wifiman-desktop-#{version}-#{arch}.pkg"

  uninstall launchctl: "wifiman-desktop",
            pkgutil:   [
              "ui.wifiman.com",
              "ui.wifiman.network.helper.WiFimanNetworkHelper",
            ],
            delete:    "/Applications/WiFiman Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ui.wifiman-desktop.sfl*",
    "~/Library/Application Support/wifiman-desktop",
    "~/Library/Logs/wifiman-desktop",
    "~/Library/Preferences/ui.wifiman-desktop.plist",
    "~/Library/Saved Application State/ui.wifiman-desktop.savedState",
  ]
end
