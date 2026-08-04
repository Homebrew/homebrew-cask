cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "2.2.1"
  sha256 arm:   "b6ec360577a9dadfedbef13d6ebf3fbd9705f966a960c68dbaf58c46006e84db",
         intel: "6803c5a1dc42a5c0fa60565fc819b81cca684e080305158b1efb1987b257e13a"

  url "https://typeless-static.com/desktop-release/Typeless-#{version}-#{arch}.dmg",
      verified: "typeless-static.com/"
  name "Typeless"
  desc "AI voice dictation that turns speech into polished text"
  homepage "https://typeless.com/"

  livecheck do
    url "https://typeless-static.com/desktop-release/#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

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
