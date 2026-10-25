cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "9d4be651b09bb3e6e7a225522ee7f938e1574a396d20014baf7fd1716890bacd",
         intel: "f609e6b0b12359b2204991ce3876687649f727b88c44c44df352353291022ef6"

  on_arm do
    version "1.143.17166-insider"
  end
  on_intel do
    version "1.143.17166-insider"
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
