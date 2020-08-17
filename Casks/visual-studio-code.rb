cask "visual-studio-code" do
  version "1.48.0"
  sha256 "dda20ac032d78628cde395546ad29447d8810cd2fd1507a459f132e3383ab9ee"

  url "https://update.code.visualstudio.com/#{version}/darwin/stable"
  appcast "https://update.code.visualstudio.com/api/update/darwin/stable/VERSION"
  name "Microsoft Visual Studio Code"
  name "VS Code"
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
