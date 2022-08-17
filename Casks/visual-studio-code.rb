cask "visual-studio-code" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.70.2"

  on_intel do
    sha256 "0604e7680372fec22897ce985584117ee68ce9abf0ef1e95e3112c2ddeedc8dd"
  end
  on_arm do
    sha256 "97ce7c68b35ae95ad75f38547c599c26b66741e2f719734c1bc5fbd34971faca"
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
