cask "visual-studio-code" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.63.0"

  if Hardware::CPU.intel?
    sha256 "926bc81f6c61af4ebe01b897e3c908324d8469be6fea552493e383899f1fcfbb"
  else
    sha256 "a516bf67588613274708860da2c2a1507ff5b90515960431a1ad9d1f8481b9b2"
  end

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/stable/VERSION"
    strategy :page_match
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/)
  end

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
