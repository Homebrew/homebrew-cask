cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0911"
  sha256 arm:   "d008aab6eec001a7f2c3658edaea843d5ede9375302d7d9e17ddb8c6d5a96e5c",
         intel: "063d8d7d0482e4400d0e4a9004c9cdc3f6cc884214b0ad61398ea0d2d46ecb8a"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/)
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
