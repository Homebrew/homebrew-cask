cask "vscodium" do
  version "1.48.2"
  sha256 "171f69646eb0f90b156d4d92a104ff838dcd981f8f79671de06a1db60b9e7d7b"

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
