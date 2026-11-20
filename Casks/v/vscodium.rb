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
    version "1.143.17232"
    sha256 arm:   "ade8f5e0ebf47e5ea9e2478844f150c68e43def192b6f8be05d0329d25ec0917",
           intel: "6f11e188a16decf417623a94593370ee87fc40445d09c0ff49e30af57a5087f5"

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
    version "1.143.17232"
    sha256 arm64_linux:  "701c988558e8b597bc368bd891cd17f46c223e1645996c9266340f2b20a8e101",
           x86_64_linux: "6f4e6192624f345c6f8f7fe543e6c98c6c928da63a32f3d48e4a49c2a44f2c95"

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
