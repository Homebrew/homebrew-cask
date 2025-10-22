cask "visual-studio-code@insiders" do
  arch arm: "-arm64"

  version "1.106.0-insider,1761145296467,e7bc1917139599733c87796448ec33591045852e"
  sha256 arm:   "3b72f93b8ee3bfc24c0da8b036a37f7d85c77fd2b6967ffe808e365f6fdbb7a5",
         intel: "585c9dfbe1d9a9c2ebe160fca03e4f80482198ccda505b4ba62d59d5b384e0a4"

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
  depends_on macos: ">= :big_sur"

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
