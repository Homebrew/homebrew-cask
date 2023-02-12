cask "tmpdisk" do
  version "2.0.5"
  sha256 "b221f6185a485c990f7501130ec5dfc6093f1380d5c671451e559b3fb8ab1e03"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
