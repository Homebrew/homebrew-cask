cask "vscodium" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.68.0"

  if Hardware::CPU.intel?
    sha256 "bddd51b9a2b506954d8883501d679ba6a2dd38ff78db71c02dd72a012402dd21"
  else
    sha256 "67b309cb4fc8bf496dd0a9fbb2bf5daba8ab7ac656f55c69ad059aaefce83e6d"
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
