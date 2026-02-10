cask "vscodium@insiders" do
  arch arm: "arm64", intel: "x64"

  version "1.109.00974-insider"
  sha256 arm:   "58a2973b94d2416dec8d726106d14bc0a207eeb9416bb05aed2b197e4857d3be",
         intel: "35dd38e2b5937046ae465ccef10ab322081a5cd41538177f4c2adbcda2688bf2"

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
  depends_on macos: ">= :monterey"

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
