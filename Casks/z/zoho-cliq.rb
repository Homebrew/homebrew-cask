cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "7c03b29d836762f5c07099180a6fdeba3e6222b974de93009f6bb039db26cd0a",
         intel: "145cc372ef9e342d779ea282a1943a2a1a8b91dab25d2b2a6ba42e0a9cda08c7"

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

  pkg "Cliq-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.plist",
    "~/Library/Saved Application State/com.zoho.cliq.savedState",
  ]
end
