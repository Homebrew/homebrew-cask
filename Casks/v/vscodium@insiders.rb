cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.104.05532-insider"
  sha256 arm:   "7dbe4f8f10e225da1de72624793c1b00885836b88c0651e09fd3310efc7032d2",
         intel: "e8c18160d26e3f7f5a40a44390b6a18ff88180d7c4d35a134d1a97c47a1dc597"

  url "https://github.com/VSCodium/vscodium-insiders/releases/download/#{version}/VSCodium-darwin-#{arch}-#{version}.zip",
      verified: "github.com/VSCodium/vscodium-insiders/"
  name "VSCodium"
  name "VSCodium Insiders"
  desc "Code editor"
  homepage "https://vscodium.com/"

  livecheck do
    url "https://raw.githubusercontent.com/VSCodium/versions/refs/heads/master/insider/darwin/#{arch}/latest.json"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "VSCodium - Insiders.app"
  binary "#{appdir}/VSCodium - Insiders.app/Contents/Resources/app/bin/codium-insiders"

  zap trash: [
    "~/.vscodium-insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vscodium.vscodiuminsiders.sfl*",
    "~/Library/Application Support/VSCodium - Insiders",
    "~/Library/Caches/com.vscodium.VSCodiumInsiders",
    "~/Library/Caches/com.vscodium.VSCodiumInsiders.ShipIt",
    "~/Library/Caches/VSCodium - Insiders",
    "~/Library/HTTPStorages/com.vscodium.VSCodiumInsiders",
    "~/Library/Preferences/com.vscodium.VSCodiumInsiders*.plist",
    "~/Library/Saved Application State/com.vscodium.VSCodiumInsiders.savedState",
  ]
end
