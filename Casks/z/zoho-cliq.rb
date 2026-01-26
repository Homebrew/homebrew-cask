cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "4e246a5c05f7cdc13173095b04c11a925ed77d39d1d9014a08e6318062a7a065",
         intel: "e44e4b99a5aff1f4f84f717be1ce668e2dd3498812ed5a1206f039451ec4e98a"

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

  depends_on macos: ">= :big_sur"

  pkg "Cliq-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.plist",
    "~/Library/Saved Application State/com.zoho.cliq.savedState",
  ]
end
