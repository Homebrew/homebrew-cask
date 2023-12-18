cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  version "1.85.1.23348"
  sha256 arm:   "f8faf508690aea341f820b32768ac365eb8a8ace6e47eedb7f62cb68e28bcac8",
         intel: "4cf1e86b22941db6c1f7d07ae0de31c1d1f627b68d0b45bc7d4942b8206a5970"

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

  zap trash: [
    "~/.vscode-oss",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.visualstudio.code.oss.sfl*",
    "~/Library/Application Support/VSCodium",
    "~/Library/Logs/VSCodium",
    "~/Library/Preferences/com.visualstudio.code.oss.helper.plist",
    "~/Library/Preferences/com.visualstudio.code.oss.plist",
    "~/Library/Saved Application State/com.visualstudio.code.oss.savedState",
  ]
end
