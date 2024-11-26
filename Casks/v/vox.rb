cask "vox" do
  version "3.7"
  sha256 :no_check

  url "https://vox.rocks/app-download?app=vox"
  name "VOX"
  desc "Music player for high resolution (Hi-Res) music through the external sources"
  homepage "https://vox.rocks/mac-music-player"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/bcf930e2-32da-0f52-2b12-6c3557ba50d7"
    strategy :sparkle, &:short_version
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
