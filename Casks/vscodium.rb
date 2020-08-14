cask "vscodium" do
  version "1.48.0"
  sha256 "9259c129d53b15cb832a66f2042beb2bbd764db518e25c0f0b39f9dc620130f1"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{version}.dmg"
  appcast "https://github.com/VSCodium/vscodium/releases.atom"
  name "VSCodium"
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
