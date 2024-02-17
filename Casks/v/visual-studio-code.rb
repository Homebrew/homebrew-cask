cask "visual-studio-code" do
  version "1.86.2"
  sha256 "b9fe35872597f54afa0391bbea7470ae847074051067c09daabbfb4b1388b5ff"

  url "https://update.code.visualstudio.com/#{version}/darwin-universal/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin-universal/stable/latest"
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
