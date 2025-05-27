cask "zoho-cliq" do
  arch arm: "arm64-", intel: "x64-"

  version "1.7.5"
  sha256 arm:   "4117fdd548aa703cebcac06ce07b3ea6e1e7b7fc230e428a7fa35c2d1f5aed70",
         intel: "82289c02ff3812e90b1873896b2e3ce332355c2d92802d5211218aed4ec70936"

  url "https://downloads.zohocdn.com/chat-desktop/mac/Cliq-#{arch}#{version}.pkg",
      verified: "downloads.zohocdn.com/chat-desktop/mac/"
  name "Zoho Cliq"
  desc "Team communication and collaboration platform"
  homepage "https://www.zoho.com/cliq/desktop/osx.html"

  livecheck do
    url "https://downloads.zohocdn.com/chat-desktop/artifacts.json"
    regex(/Cliq[._-](?:arm64|x64)[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :json do |json, regex|
      json["mac"]&.map do |_, item|
        match = item[on_arch_conditional(arm: "arm64", intel: "x64")]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  pkg "Cliq-#{arch}#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq.desktop"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.desktop.plist",
    "~/Library/Saved Application State/com.zoho.cliq.desktop.savedState",
  ]
end
