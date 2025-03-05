cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.98.0"
  sha256 arm:   "c794330a7e7b96a6f31d69c67b01c52f4d3a7574fc56d50d24e578b06495e72d",
         intel: "0a5cebab8e2939592a631d162bec15589cfe573e2ebfb5cd466107ba1d0151d9"

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/stable/latest"
    strategy :json do |json|
      json["productVersion"]
    end
  end

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
