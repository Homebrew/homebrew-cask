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
    version "1.143.17183"
    sha256 arm:   "b31ca09d8187dd48e077c13ca39b01af234582fe8f5015a918e3c985cc76427e",
           intel: "2ba006bd8b01f6c208d6cc586b5cef22092d7b0c44338247cfc95c6fd61ebf6c"

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
    version "1.143.17183"
    sha256 arm64_linux:  "14ebdbbf8752029a4b3674a8d7794b0d21301603f257cee5c79233ab0a50ecc3",
           x86_64_linux: "e15017781bfc4984056e38999e199372568baf174274da6c236f3f6cda1e73e7"

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
