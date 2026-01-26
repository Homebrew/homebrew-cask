cask "vox" do
  version "3.7.7,3770.1"
  sha256 "287159bc31c99a46f71bcad02b73edd2f8fa3926d4bc1bbcfaea3beb7e03a96d"

  url "https://cdn.vox.rocks/vox-player/releases/versions/VOX-#{version.csv.second}.dmg"
  name "VOX"
  desc "Music player for high resolution (Hi-Res) music through the external sources"
  homepage "https://vox.rocks/mac-music-player"

  livecheck do
    url "https://cdn.vox.rocks/vox-player/releases/update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "VOX.app"

  uninstall launchctl: "com.coppertino.VoxHelper"

  zap trash: [
    "~/Library/Application Scripts/com.coppertino.Vox",
    "~/Library/Application Scripts/com.coppertino.VOXAgent",
    "~/Library/Application Support/com.coppertino.Vox",
    "~/Library/Caches/com.coppertino.Vox-Helper",
    "~/Library/Containers/com.coppertino.Vox",
    "~/Library/Containers/com.coppertino.VOXAgent",
    "~/Library/Preferences/com.coppertino.Vox-Helper.plist",
    "~/Library/Preferences/com.coppertino.Vox.plist",
    "~/Library/Preferences/com.coppertino.VoxPrefs.plist",
    "~/Library/Saved Application State/com.coppertino.Vox.savedState",
  ]
end
