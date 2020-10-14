cask "visual-studio-code" do
  version "1.50.1"
  sha256 "97f5cf4d6cf3e030848365ec87774507b4d978bacdf6c0f001401cf7d361f5ab"

  url "https://update.code.visualstudio.com/#{version}/darwin/stable"
  appcast "https://update.code.visualstudio.com/api/update/darwin/stable/VERSION"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  auto_updates true

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap trash: [
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
    "~/.vscode",
  ]
end
