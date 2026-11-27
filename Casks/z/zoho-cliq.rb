cask "zoho-cliq" do
  arch arm: "arm64", intel: "x64"

  version "1.8.7"
  sha256 arm:   "a19c59daa4f6b18b812aa198e9f31d79b9ca4e0788a3defd6c56642b46a009f7",
         intel: "ef753ef2682dbbc41be567941271b6c785e1b905e1615d3345c0405bde01fee3"

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

  depends_on macos: :ventura

  pkg "Cliq-#{arch}-#{version}.pkg"

  uninstall pkgutil: "com.zoho.cliq"

  zap trash: [
    "~/Library/Application Support/Zoho Cliq",
    "~/Library/Logs/Zoho Cliq",
    "~/Library/Preferences/com.zoho.cliq.plist",
    "~/Library/Saved Application State/com.zoho.cliq.savedState",
  ]
end
