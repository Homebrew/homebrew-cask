cask "zoho-cliq" do
  version "1.7.5"
  sha256 "4117fdd548aa703cebcac06ce07b3ea6e1e7b7fc230e428a7fa35c2d1f5aed70"

  url "https://downloads.zohocdn.com/chat-desktop/mac/Cliq-arm64-#{version}.pkg",
      verified: "downloads.zohocdn.com/chat-desktop/mac/"
  name "Zoho Cliq"
  desc "Team communication and collaboration platform"
  homepage "https://www.zoho.com/cliq/desktop/osx.html"

  livecheck do
    url "https://downloads.zohocdn.com/chat-desktop/artifacts.json"
    regex(/Cliq[._-]arm64[._-]v?(\d+(?:\.\d+)+)\.pkg/i)

    strategy :json do |json, regex|
      url = json.dig("mac", "arm64")
      next if url.blank?

      match = url.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :catalina"

  pkg "Cliq-arm64-#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq.desktop"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.desktop.plist",
    "~/Library/Saved Application State/com.zoho.cliq.desktop.savedState",
  ]
end
