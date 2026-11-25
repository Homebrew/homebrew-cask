cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9-1120"
  sha256 arm:   "0dec47b4436ff8c9a6d25e5d429664807db804c8799c0786f04bf6bbaa3f5f99",
         intel: "e355f77ee6cad329b48b1d93277c3a43942d769af9528c865c706f072844973d"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
  end

  depends_on macos: :ventura

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
