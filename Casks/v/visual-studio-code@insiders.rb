cask "visual-studio-code@insiders" do
  arch arm: "-arm64"

  version "1.103.0-insider,1753679109728,5e5fabe43505fc3510c5185c2afff35bf9923bbd"
  sha256 arm:   "141f47c4d7bb727963476c62b7b6fdeeebdc221419c0eebc818d837faa6223b4",
         intel: "5960ddeb92f6437598fbf26b4536ea9d55a0c20014fd6d8e399cfeb35d7725d8"

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
