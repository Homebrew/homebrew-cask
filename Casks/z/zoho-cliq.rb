cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.4"
  sha256 arm:   "243242cdb5d5884b66855b0645720f5043c628bee6807a385eb6954050176f44",
         intel: "4196a3c497ecda1fffcd3330e03205dccfae3f7a4026e06374154d8a22172019"

  url "https://downloads.zohocdn.com/chat-desktop/mac/Cliq-#{arch}-#{version}.pkg"
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
