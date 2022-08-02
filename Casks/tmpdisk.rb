cask "tmpdisk" do
  version "2.0.3"
  sha256 "52f69996ca66b0f8c1fdf94a7408548e59fcc9e40a9f00b8e692339d79da3aee"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
