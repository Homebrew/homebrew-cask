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
  on_big_sur do
    version "1.106.37943"
    sha256 arm:   "e09c8fbf04c82d752ec0b4f5f4e93bab8644a06d2b9ad6c08e6b8eb6067b5f85",
           intel: "a946df0329f0e501db58793ef0c7101480972a25a4edd7ec3bd8cda6006f92e7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.108.20787"
    sha256 arm:   "7c8a76347d80b69437297157bc3148c38271d909579f01c4e16b242746cbc0d1",
           intel: "dbda05ad17ddc5c324ce9a589100e428fd039a7ce3c1b49c88abc6c0385ff2ad"

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
