cask "visual-studio-code@insiders" do
  arch arm: "-arm64"

  version "1.99.0-insider,1742839714807,b47e1fee9e4034b5a569d54f7765e4133bd3f7ed"
  sha256 arm:   "a2d5f910422682f51c7c54d22a87be6ea9723b83bbf5147a5629a04c99820fe7",
         intel: "e6cc61b33b8275f079ab841caa6c4ab9e998ea8f83c3349e834bd3ded6e60c5f"

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
