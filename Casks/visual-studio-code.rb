cask "visual-studio-code" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.61.0"

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable",
      verified: ""
  if Hardware::CPU.intel?
    sha256 "790d20e26b5e01c74f6fe562dfda58698c84275ab3071341831424f6bde3c564"
  else
    sha256 "476dda2af4c001e7f48ed20d16a2bfa6246d31b790d1d6ccbf87f2f0111caf40"
  end

  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/stable/VERSION"
    strategy :page_match
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)*)"/)
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
