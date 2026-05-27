cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  on_catalina :or_older do
    version "1.97.2"
    sha256 arm:   "567ba4fae5545586a0bff02eea263d59873fcf488368a9a9ccf3d4c22dfa8ebc",
           intel: "cfe48cf7bce34830cb7a20ee7b5e8fbe575fe95a47ef49f62dce8ccf3087dd89"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "1.106.3"
    sha256 arm:   "35dd438808dde1dd1f65490ffe7713ed64102324c0809efbec0b4eb2809b218b",
           intel: "c41872149a205f3a3be3e5d3a8f04920407a0762531e607f78dc93f4d4813cda"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.122.0"
    sha256 arm:   "23c9806786a7f78796cd6fcc310c301ad3993fbb8c36959509e7fd2e2d01b6ce",
           intel: "1ab8c1edbdd9a97b6c7822a1494b29cc19bda863c80f0442c38b9d2740f2d0d0"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/#{arch}/stable/latest"
      strategy :json do |json|
        json["productVersion"]
      end
    end
  end

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  auto_updates true
  depends_on :macos

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code-tunnel"

  uninstall launchctl: "com.microsoft.VSCode.ShipIt",
            quit:      "com.microsoft.VSCode"

  zap trash: [
    "~/.vscode",
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/HTTPStorages/com.microsoft.VSCode",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
