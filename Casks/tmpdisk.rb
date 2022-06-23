cask "tmpdisk" do
  version "2.0.2"
  sha256 "bc8e09b55c20e24850d31a2ff797567dd854a7c514c10f293d53005dade304ef"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
