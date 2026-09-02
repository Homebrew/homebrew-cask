cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "0211ba4913511e452f861474603d24f6b07c12a8905c649882cadce5710f548c",
         intel: "1a7085ab95bee3a1a8a44a0a08a58ea2ab66497678c7dfbc22a0e6a27ee938bf"

  on_arm do
    version "1.135.05870-insider"
  end
  on_intel do
    version "1.135.05854-insider"
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
