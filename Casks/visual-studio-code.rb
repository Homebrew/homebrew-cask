cask "visual-studio-code" do
  version "1.53.1"

  if Hardware::CPU.intel?
    sha256 "cce23e760b7103d3e5e2d8ef488f8cf6b1f1e31aa42f68b0bcde66327db12cb2"

    url "https://update.code.visualstudio.com/#{version}/darwin/stable"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/darwin/stable/VERSION"
      strategy :page_match
      regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)*)"/)
    end
  else
    sha256 "decf286cae311a808c7f0383fa74c6799aa8a6a4533db0c869689496c4d108bb"

    url "https://update.code.visualstudio.com/#{version}/darwin-arm64/stable"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/darwin-arm64/stable/VERSION"
      strategy :page_match
      regex(/"productVersion"\s*:\s*"(\d+(:?\.\d+)*)"/)
    end
  end

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
