cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "2.8.1"
  sha256 arm:   "c0b0331f08659d46959117ed7270c0dcd91a6275b1bb6227d9b3d1b9538b147b",
         intel: "b6230d15048be40ed07794cad8879c974581a8a4a13840b5597c4c897d2bcd79"

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
