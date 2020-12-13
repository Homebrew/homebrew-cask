cask "vox-preferences-pane" do
  version "1.5.14"
  sha256 :no_check

  url "https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg",
      verified: "devmate.com/com.coppertino.VoxPrefs/"
  appcast "http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml"
  name "VOX Preferences"
  homepage "https://vox.rocks/mac-music-player/control-extension-download"

  prefpane "Vox Preferences.prefPane"
end
