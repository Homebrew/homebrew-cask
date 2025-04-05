cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  on_catalina :or_older do
    version "1.97.2.25045"
    sha256 arm:   "48d01a0663b7a6396f41ddc11296eb812d58e9fe3b671b9d33e6b21621e40f21",
           intel: "af8fe5721ef431ab59fe05a06a3a462c40884229f61cc2962ea01d3e66997243"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.99.02283"
    sha256 arm:   "d301ea2a1893bbb10cb1be820a13d92077432483b0dce477ae6dffcd6ab4d2c0",
           intel: "6322d5295020f7352117f37df45ba14897b289342b715f29283b66bc5657833d"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{arch}.#{version}.dmg"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

  zap trash: [
    "~/.vscode-oss",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vscodium.sfl*",
    "~/Library/Application Support/VSCodium",
    "~/Library/Caches/com.vscodium",
    "~/Library/Caches/com.vscodium.ShipIt",
    "~/Library/HTTPStorages/com.vscodium",
    "~/Library/Preferences/com.vscodium*.plist",
    "~/Library/Saved Application State/com.vscodium.savedState",
  ]
end
