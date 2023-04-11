cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  version "1.77.2.23101"
  sha256 arm:   "b8ee632556b3d5b30201ebffc213dd71c53df80759f7950e506270c3c45821a3",
         intel: "2bcd6efb6de0626a53cf21f1b276782490cf8057c818007b23e10978df1ced97"

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
