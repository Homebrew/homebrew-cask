cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.85.2"
  sha256 arm:   "a4be4bb51ee4e1b79adba13659567e3df29e6be6495878b46a52a2697ef1b030",
         intel: "330cdfd8ff41a703c0ad09d7c523cfdeeddaf56b1220ebe61d7d22ff4e40e1b3"

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/stable/latest"
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  uninstall quit: "com.microsoft.VSCode"

  zap trash: [
    "~/.vscode",
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
