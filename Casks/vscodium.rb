cask "vscodium" do
  version "1.49.3"
  sha256 "8c102c03319d29d5985eea0e71c3b90423018d7459a7e20a91063a74bf885045"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{version}.dmg"
  appcast "https://github.com/VSCodium/vscodium/releases.atom"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true
  conflicts_with cask: "visual-studio-code"

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/code"

  zap trash: [
    "~/Library/Application Support/VSCodium",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.visualstudio.code.oss.sfl*",
    "~/Library/Logs/VSCodium",
    "~/Library/Preferences/com.visualstudio.code.oss.helper.plist",
    "~/Library/Preferences/com.visualstudio.code.oss.plist",
    "~/Library/Saved Application State/com.visualstudio.code.oss.savedState",
    "~/.vscode-oss",
  ]
end
