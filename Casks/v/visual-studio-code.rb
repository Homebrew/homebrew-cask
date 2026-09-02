cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  on_big_sur :or_older do
    version "1.106.3"
    sha256 arm:   "35dd438808dde1dd1f65490ffe7713ed64102324c0809efbec0b4eb2809b218b",
           intel: "c41872149a205f3a3be3e5d3a8f04920407a0762531e607f78dc93f4d4813cda"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.136.0"
    sha256 arm:   "0a5c7484af915c44dddbf578e6ce1aafd0f12eb6cce122a7762cfcaacc79fef4",
           intel: "f08e9aa855364e6bbb2919e6b7485c477f115f89fe5df86cf83c55e8fec2a9a3"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/#{arch}/stable/latest"
      strategy :json do |json|
        json["productVersion"]
      end
    end
  end

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  auto_updates true
  depends_on :macos

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code-tunnel"

  uninstall launchctl: "com.microsoft.VSCode.ShipIt",
            quit:      "com.microsoft.VSCode"

  zap trash: [
    "~/.vscode",
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/HTTPStorages/com.microsoft.VSCode",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
