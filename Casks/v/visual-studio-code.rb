cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.92.2"
  sha256 arm:   "ce2ddee58521ce4e2d86e47e2fc1d95cf5c6eace0b314358d961a7036a6fc434",
         intel: "a51bcb1cbd477ec83b7e1b8114b44a5b8324cd81aad7d83051c6af62393194c7"

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
