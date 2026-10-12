cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "96ebfe8c654e42a359c60d2141200022dbd82d54842ae9091bd800f24345af8e",
         intel: "faa2b47908666e22e5a954fb779edbbe399de8c04778c3d57722734f882286f5"

  on_arm do
    version "1.140.06829-insider"
  end
  on_intel do
    version "1.140.06829-insider"
  end

  url "https://github.com/VSCodium/vscodium-insiders/releases/download/#{version}/VSCodium-darwin-#{arch}-#{version}.zip"
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
  depends_on macos: :monterey

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
