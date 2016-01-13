cask 'vox-preferences-pane' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          :checkpoint => 'fc067b0c45b9d576e3df3e87ae5895ecd1495696bc1c9a691b35ae34c318998e'
  name 'VOX Preferences'
  homepage 'https://coppertino.com/addon'
  license :gratis

  prefpane 'Vox Preferences.prefPane'
end
