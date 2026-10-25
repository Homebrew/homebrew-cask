cask "wblock" do
  version "3.2.2"
  sha256 "c365749017e0e943850fe36c3f14fa10c28e19c142c19987c8e4984592c3bfdb"

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
