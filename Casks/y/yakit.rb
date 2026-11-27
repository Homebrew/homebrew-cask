cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9-1127"
  sha256 arm:   "99bac8581d37bf38337a4c7749991d17177bc4b2ccc43d1a49fc882c935a0181",
         intel: "c86a7d81dfcbf9d22235ab6cca79990f1549b7d3814a5accac55e5cfd5eb918f"

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
