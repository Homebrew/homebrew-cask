cask :v1 => 'vox-preferences-pane' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          :sha256 => '25284589df6ed7b6b3819c23c70e77ac8f8122fec303f7ecb1e11cb173f7bb12'
  name 'VOX Preferences'
  homepage 'http://coppertino.com/addon'
  license :gratis

  prefpane 'Vox Preferences.prefPane'
end
