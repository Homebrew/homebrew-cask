cask "vox" do
  version "3399.9,1606236929"
  sha256 "1ce5db5bb1865206c95704df606f61675eb57f2cac57b02524a073271b63ac6f"

  # devmate.com/com.coppertino.Vox/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.coppertino.Vox.xml"
  name "VOX"
  desc "Music player for high resoluion (Hi-Res) music through the external sources"
  homepage "https://vox.rocks/mac-music-player"

  auto_updates true

  app "VOX.app"

  uninstall launchctl: "com.coppertino.VoxHelper"

  zap trash: [
    "~/Library/Application Scripts/com.coppertino.VOXAgent",
    "~/Library/Application Scripts/com.coppertino.Vox",
    "~/Library/Application Support/com.coppertino.Vox",
    "~/Library/Caches/com.coppertino.Vox-Helper",
    "~/Library/Containers/com.coppertino.VOXAgent",
    "~/Library/Containers/com.coppertino.Vox",
    "~/Library/Preferences/com.coppertino.Vox-Helper.plist",
    "~/Library/Preferences/com.coppertino.Vox.plist",
    "~/Library/Preferences/com.coppertino.VoxPrefs.plist",
    "~/Library/Saved Application State/com.coppertino.Vox.savedState",
  ]
end
