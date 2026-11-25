cask "wblock" do
  version "3.2.3"
  sha256 "d60bc0c7471de2eace8dacea54313606e73ebdf08aacd4b1dd614404b9416d24"

  url "https://github.com/0xCUB3/wBlock/releases/download/#{version}/wBlock-#{version}.dmg"
  name "wBlock"
  desc "Ad blocker for Safari"
  homepage "https://skula.me/project/wblock/"

  depends_on macos: :monterey

  app "wBlock.app"

  uninstall launchctl: "skula.wBlock.FilterUpdateAgent",
            quit:      "skula.wBlock"

  zap launchctl: "skula.wBlock.FilterUpdateAgent",
      trash:     [
        "~/Library/Application Scripts/DNP7DGUB7B.group.skula.wBlock",
        "~/Library/Application Scripts/skula.wBlock*",
        "~/Library/Application Support/wBlock",
        "~/Library/Caches/skula.wBlock",
        "~/Library/Containers/skula.wBlock*",
        "~/Library/Group Containers/DNP7DGUB7B.group.skula.wBlock",
        "~/Library/Preferences/skula.wBlock.plist",
        "~/Library/Saved Application State/skula.wBlock.savedState",
      ]
end
