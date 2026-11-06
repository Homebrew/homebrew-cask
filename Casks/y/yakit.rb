cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9-1106"
  sha256 arm:   "2dae39c261d051b78df552e33a654aa0b85185840a309c7179bb9335ffdd274c",
         intel: "33242c1f25d86f75aba6bf9313a96d8b1680f2ec8d9382bbcb2d20280696576a"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
  end

  depends_on :macos

  app "Yakit.app"

  uninstall quit: "io.yaklang.yakit"

  zap trash: [
    "~/.yakit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.yaklang.yakit.sfl*",
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
