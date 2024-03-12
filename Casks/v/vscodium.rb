cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  version "1.87.2.24072"
  sha256 arm:   "1f4c6d70ba213fc712cb57da8a74211a1464cb41f658b3632281be21db8bc8ed",
         intel: "9c5ba350ce78c07e49fe7cb1ab0448458317aea11ac5e105c935952aaa6e3b40"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

  zap trash: [
    "~/.vscode-oss",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vscodium.sfl*",
    "~/Library/Application Support/VSCodium",
    "~/Library/Caches/com.vscodium",
    "~/Library/Caches/com.vscodium.ShipIt",
    "~/Library/HTTPStorages/com.vscodium",
    "~/Library/Preferences/com.vscodium*.plist",
    "~/Library/Saved Application State/com.vscodium.savedState",
  ]
end
