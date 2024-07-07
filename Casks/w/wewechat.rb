cask "wewechat" do
  version "1.1.7"
  sha256 "4673347d6192fba598f9e9271ad4dea52f633b8da623056cac84de88d4e72c5e"

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/wewechat-#{version}-mac.dmg"
  name "weweChat"
  desc "Unofficial WeChat client"
  homepage "https://github.com/trazyn/weweChat"

  deprecate! date: "2024-07-07", because: :discontinued

  app "wewechat.app"

  zap trash: [
    "~/Library/Application Support/wewechat",
    "~/Library/Preferences/gh.trazyn.wewechat.helper.plist",
    "~/Library/Preferences/gh.trazyn.wewechat.plist",
    "~/Library/Saved Application State/gh.trazyn.wewechat.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
