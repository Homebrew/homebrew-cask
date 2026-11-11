cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "2.11.0"
  sha256 arm:   "050214b073e2a4e66e3865824707fd684b89c3b947022ac63d2b9f7a2157459c",
         intel: "94695b1618e9cc7adf87c2d8cc92559c883e9a8c805ad1e53e0a865d1ff98d19"

  url "https://typeless-static.com/desktop-release/Typeless-#{version}-#{arch}.dmg"
  name "Typeless"
  desc "AI voice dictation that turns speech into polished text"
  homepage "https://typeless.com/"

  livecheck do
    url "https://typeless-static.com/desktop-release/#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
