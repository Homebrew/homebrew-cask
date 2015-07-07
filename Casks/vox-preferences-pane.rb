cask :v1 => 'vox-preferences-pane' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  name 'VOX Preferences'
  homepage 'http://coppertino.com/addon'
  license :gratis

  prefpane 'Vox Preferences.prefPane'
end
