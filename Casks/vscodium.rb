cask "vscodium" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.69.1"

  if Hardware::CPU.intel?
    sha256 "9773ac40187fd5beff3b34f32c9ce5e707d550eb780c8ebc4441ef85275a3e79"
  else
    sha256 "1ae2d84a2a46db9417fd4eecd80e6bca262098ff772c7dabd518ebb1e130c1f2"
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
