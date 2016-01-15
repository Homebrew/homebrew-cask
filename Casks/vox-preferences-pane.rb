cask 'vox-preferences-pane' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.coppertino.VoxPrefs/VoxPrefs.dmg'
  appcast 'http://updateinfo.devmate.com/com.coppertino.VoxPrefs/updates.xml',
          :checkpoint => 'c5d5496d2f6dd7567cb3b32535847b5d8cb403289bcdce458b977cb2df496da3'
  name 'VOX Preferences'
  homepage 'https://coppertino.com/addon'
  license :gratis

  prefpane 'Vox Preferences.prefPane'
end
