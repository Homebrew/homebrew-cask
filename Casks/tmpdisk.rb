cask "tmpdisk" do
  version "2.0.4"
  sha256 "4c50957cf725a648cca2b632681c22e70990428a8ab922ab4c53eedb14154019"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
