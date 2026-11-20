cask "wifiman" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0"
  sha256 arm:   "544c06d9c9a9b5abbf0d51f7a427b095d5d4708970d3f510d43d620bdff7a7fc",
         intel: "5754875dd25e4e23516d98df2e9a60eb9659e2ce69b1ef8bd75af4d00f51140b"

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

  depends_on :macos

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
