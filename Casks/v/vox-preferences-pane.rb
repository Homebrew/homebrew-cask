cask "vox-preferences-pane" do
  version "1.5.14"
  sha256 :no_check

  url "https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg",
      verified: "devmate.com/com.coppertino.VoxPrefs/"
  name "VOX Preferences"
  desc "VOX Add-on for Apple Remote, EarPods and System Buttons"
  homepage "https://vox.rocks/mac-music-player/control-extension-download"

  livecheck do
    url "http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml"
    strategy :sparkle
  end

  prefpane "Vox Preferences.prefPane"

  zap trash: "~/Library/Preferences/com.coppertino.VoxPrefs.plist"

  caveats do
    requires_rosetta
  end
end
