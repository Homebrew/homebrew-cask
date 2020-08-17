cask "vox-preferences-pane" do
  version "1.5.14"
  sha256 "26da53a8c6f4a14a75dc1f4f5d5dc202fbf7d23a4541d0a9ff8ea4f452168ea8"

  # devmate.com/com.coppertino.VoxPrefs/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg"
  appcast "http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml"
  name "VOX Preferences"
  homepage "https://vox.rocks/mac-music-player/control-extension-download"

  prefpane "Vox Preferences.prefPane"
end
