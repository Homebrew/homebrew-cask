cask "vscodium" do
  version "1.58.0"
  sha256 "2f1f07eb6a906601a55e6d35266dccacaf527f238c1ed63d0a6932596b7a09e1"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.x64.#{version}.dmg"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

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
