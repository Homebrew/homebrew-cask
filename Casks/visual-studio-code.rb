cask "visual-studio-code" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  if MacOS.version <= :yosemite
    version "1.55.2"
    sha256 "be3a1ebfac2c6c5e882714304adc518aff8bac6b663e194a9e73524c62065b94"
  else
    version "1.67.2"
    if Hardware::CPU.intel?
      sha256 "8cfce2a3f0c9c497b76c5bd48231f873748211894768165d4bca020633ff517f"
    else
      sha256 "23931d1e2bbf1a30d12461d4d9a0e918d6cccb52b732d251d7d76f60bd146262"
    end
  end

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/stable/VERSION"
    regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)+)"/i)
  end

  auto_updates true

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

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
