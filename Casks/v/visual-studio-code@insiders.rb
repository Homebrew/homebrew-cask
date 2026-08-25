cask "visual-studio-code@insiders" do
  arch arm: "-arm64"

  version "1.135.0-insider,1787655838739,7437923619df0b080f2fc0f85e7033558bd2865c"
  sha256 arm:   "a0ec15ab431042da625a59eb4faf4e88853e17060db07a6cffb880e57dcbd410",
         intel: "6222c75b253b5d58ef785c657b781e9e80fa8942546316ae5f6b9ffe9831a3bf"

  url "https://vscode.download.prss.microsoft.com/dbazure/download/insider/#{version.csv.third}/VSCode-darwin#{arch}.zip",
      verified: "vscode.download.prss.microsoft.com/"
  name "Microsoft Visual Studio Code Insiders"
  name "VS Code Insiders"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/insiders/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin#{arch}/insider/latest"
    strategy :json do |json|
      version = json["productVersion"]
      timestamp	= json["timestamp"]
      build = json["version"]
      next if version.blank? || timestamp.blank? || build.blank?

      "#{version},#{timestamp},#{build}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  uninstall launchctl: "com.microsoft.VSCodeInsiders.ShipIt",
            quit:      "com.microsoft.VSCodeInsiders"

  zap trash: [
    "~/.vscode-insiders",
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodeinsiders.sfl*",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/HTTPStorages/com.microsoft.VSCodeInsiders",
    "~/Library/Preferences/ByHost/com.microsoft.VSCodeInsiders.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodeInsiders.savedState",
  ]
end
