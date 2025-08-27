cask "visual-studio-code@insiders" do
  arch arm: "-arm64"

  version "1.104.0-insider,1756280686530,4a31639f5f6e1ba6f2521ca73430f3d59eb97524"
  sha256 arm:   "088a855871e4775f69cd7af44b94c71bfef40dd7014b74f6fe8d4d6a0d03cc42",
         intel: "9c4e81b9e0f98f129ff55ccf756f1072693b903e9346139735106049ea07b52e"

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
  depends_on macos: ">= :catalina"

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
