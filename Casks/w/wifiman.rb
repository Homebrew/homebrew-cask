cask "wifiman" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.8"
  sha256 arm:   "4e8f51aa02122227a8c93ba9aae6a0aa7738701a0a0e231248787c26319ec011",
         intel: "c0f90ff8a7ecdf485a1628b70235a3b21083a212e188da6b941e44ba4e9afffc"

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
