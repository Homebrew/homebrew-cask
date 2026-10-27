cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "2.9.0"
  sha256 arm:   "42879868e8454a67838ef1691f9c36b1f32ab15fbf77d70aae1aab8707e05273",
         intel: "e55af7c58a657e083c85e2dd23c4e3441facfb2fa87ad59b990f3d026c837845"

  url "https://typeless-static.com/desktop-release/Typeless-#{version}-#{arch}.dmg"
  name "Typeless"
  desc "AI voice dictation that turns speech into polished text"
  homepage "https://typeless.com/"

  livecheck do
    url "https://typeless-static.com/desktop-release/#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Typeless.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/now.typeless.desktop.sfl*",
    "~/Library/Application Support/now.typeless.desktop",
    "~/Library/Application Support/typeless",
    "~/Library/Caches/typeless",
    "~/Library/Preferences/com.typeless.plist",
    "~/Library/Preferences/now.typeless.desktop.plist",
    "~/Library/Saved Application State/now.typeless.desktop.savedState",
  ]
end
