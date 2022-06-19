cask "vscodium" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.68.1"

  if Hardware::CPU.intel?
    sha256 "f8484267e5fbdf9339548eaa18f731a81c89212519a6947a99a38f2a00cfb66a"
  else
    sha256 "6837f4f32d46d3a900a2c9e65b54235dc65d24038139d5d78689a3617fdc7717"
  end

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
