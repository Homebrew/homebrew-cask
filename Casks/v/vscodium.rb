cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  on_catalina :or_older do
    version "1.97.2.25045"
    sha256 arm:   "c47c8e1df67fdbcbb8318cdccaf8fa4f7716cb2ed5e8359c09319d9a99a1a4b6",
           intel: "1a733b8c254fa63663101c52568b0528085baabe184aae3d34c64ee8ef0142d5"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.105.16999"
    sha256 arm:   "f6824fd49775a0a60865c692db6847796ea39c555676ebc71d39e437ff5f9765",
           intel: "cd5f4003844d0815c41d1ba82f933437e9bc66223a8cc59ec5f54bb4a5ccbdc9"

    livecheck do
      url "https://raw.githubusercontent.com/VSCodium/versions/refs/heads/master/stable/darwin/#{arch}/latest.json"
      strategy :json do |json|
        json["name"]
      end
    end
  end

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-darwin-#{arch}-#{version}.zip"
  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"

  auto_updates true

  app "VSCodium.app"
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/codium"

  zap trash: [
    "~/.vscode-oss",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vscodium.sfl*",
    "~/Library/Application Support/VSCodium",
    "~/Library/Caches/com.vscodium",
    "~/Library/Caches/com.vscodium.ShipIt",
    "~/Library/Caches/VSCodium",
    "~/Library/HTTPStorages/com.vscodium",
    "~/Library/Preferences/com.vscodium*.plist",
    "~/Library/Saved Application State/com.vscodium.savedState",
  ]
end
