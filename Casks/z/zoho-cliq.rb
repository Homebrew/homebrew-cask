cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.6"
  sha256 arm:   "8161ca4792a57923fc57c125a441bcfb3ba133e50163dead3fc89d6044199d6a",
         intel: "f0e48504c295b96b43b97aca02888f04e54419d4a17cebfcfe796b3437551081"

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
