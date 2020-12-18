cask "vscodium" do
  version "1.52.1"
  sha256 "c0a44c9806766d70175880b3e0f2c2cd24875d5281864b1499171190e793f766"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.x64.#{version}.dmg"
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
