cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "2.8.2"
  sha256 arm:   "47152eafa9d3fc13d6276bbb2d2ecec61f670c08631e96f09a5c225885ccd24d",
         intel: "0380b8876e7f3e48c73e93bc2fb3e2443810bdb17ddcfa92dae6a0db83e7e6f6"

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
