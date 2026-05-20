cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "878addd000d498da42a95c3f1602dd8a9d93824d5edc618d4bb69b67d2bab1ac",
         intel: "a2894d1cf490c70f9c3adbbf4bb4bc5cc776cca32abd0208ff4c8fccc00f2115"

  url "https://downloads.zohocdn.com/chat-desktop/mac/Cliq-#{arch}-#{version}.pkg",
      verified: "downloads.zohocdn.com/chat-desktop/mac/"
  name "Zoho Cliq"
  desc "Team communication and collaboration platform"
  homepage "https://www.zoho.com/cliq/desktop/osx.html"

  livecheck do
    url "https://downloads.zohocdn.com/chat-desktop/artifacts.json"
    regex(/Cliq[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :json do |json, regex|
      match = json.dig("mac", arch)&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: :monterey

  pkg "Cliq-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.plist",
    "~/Library/Saved Application State/com.zoho.cliq.savedState",
  ]
end
