cask "vscodium" do
  arch arm: "arm64", intel: "x64"

  on_big_sur :or_older do
    version "1.106.37943"
    sha256 arm:   "e09c8fbf04c82d752ec0b4f5f4e93bab8644a06d2b9ad6c08e6b8eb6067b5f85",
           intel: "a946df0329f0e501db58793ef0c7101480972a25a4edd7ec3bd8cda6006f92e7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.135.06055"
    sha256 arm:   "61ff9ebc3ac5563c63a0a9e1b479822647e7f2c3303b0629f15fefe9e291f7cc",
           intel: "2fce180317a011576dc7e0910e1033d3287472b56e362b33175f5416415b604a"

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
  depends_on :macos

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
