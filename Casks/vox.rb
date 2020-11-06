cask "vox" do
  version "3398.3,1580250435"
  sha256 "7b28a89217fad66944e9308e967a5e8dedb73f2536da543e6620c62575c6d730"

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
