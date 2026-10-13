cask "vscodium" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")

  on_big_sur :or_older do
    version "1.106.37943"
    sha256 arm:   "e09c8fbf04c82d752ec0b4f5f4e93bab8644a06d2b9ad6c08e6b8eb6067b5f85",
           intel: "a946df0329f0e501db58793ef0c7101480972a25a4edd7ec3bd8cda6006f92e7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.140.06880"
    sha256 arm:   "3a0ba1a13b6d743f79ffc20bebd7a2ef8bab2b40e54bcc80fae123da9ed552e0",
           intel: "e828c20847f4c00f0d9396f168a6cd536d0df5e32903b880541ddc8022264a97"

    livecheck do
      url "https://raw.githubusercontent.com/VSCodium/versions/refs/heads/master/stable/darwin/#{arch}/latest.json"
      strategy :json do |json|
        json["name"]
      end
    end
  end
  on_macos do
    url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-darwin-#{arch}-#{version}.zip"

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
  on_linux do
    version "1.140.06880"
    sha256 arm64_linux:  "f79748725a1cb952f91416d1d72b818d19b434b9003b05346a0b8c1e3b710179",
           x86_64_linux: "b08aa079b6b20339cb78324161cc8c9bcbcdd866767b950385b28c9f4275086c"

    url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-#{version}-anylinux-#{arch}.AppImage"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "VSCodium-#{version}-anylinux-#{arch}.AppImage", target: "VSCodium.AppImage"

    zap trash: [
      "~/.config/VSCodium",
      "~/.vscode-oss",
    ]
  end

  name "VSCodium"
  desc "Binary releases of VS Code without MS branding/telemetry/licensing"
  homepage "https://github.com/VSCodium/vscodium"
end
