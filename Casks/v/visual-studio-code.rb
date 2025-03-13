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
  on_big_sur :or_newer do
    version "1.98.2"
    sha256 arm:   "ac89add013db53126c99387a9178781b8d67a69d4defad871d297cc7c4cfc603",
           intel: "dbb2de3b0fc513871826c6efe9552084e409b7249f3b4e0c85ac6a95eed762f8"

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
  depends_on macos: ">= :catalina"

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

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
