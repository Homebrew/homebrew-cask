cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.93.0.24231-insider"
  sha256 arm:   "4e15911f58466b803de0bf9c6211b7143cc172819a921a548db7cfd78704b981",
         intel: "a87e09c502dadb2e45772fd19444abd198b2f2d35352ced188ec94399b81b2c3"

  url "https://github.com/VSCodium/vscodium-insiders/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg",
      verified: "github.com/VSCodium/vscodium-insiders/"
  name "VSCodium"
  name "VSCodium Insiders"
  desc "Code editor"
  homepage "https://vscodium.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "VSCodium - Insiders.app"
  binary "#{appdir}/VSCodium - Insiders.app/Contents/Resources/app/bin/codium-insiders", target: "codium-insiders"

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
